class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find_by(:id => params[:id])
    @itineraries = Itinerary.all
    @users = Itinerary.pluck(:attendee_id)
    render :show
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end


end