class ItinerariesController < ApplicationController

  before_action :redirect_unless_logged_in


  def new
    @itinerary = Itinerary.new
    @concert = Concert.find(params[:concert_id])
    render 'itineraries/new'
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @concert = Concert.find(params[:concert_id])

    @itinerary.attendee_id = current_user.id
    @itinerary.concert_id = params[:concert_id]


    if @itinerary.save
       current_user.itineraries << @itinerary
       redirect_to user_path(current_user.id)
    else
      @errors = @itinerary.errors.full_messages
      render :new
    end
  end

  def update
    # raise params.inspect
    @itinerary = Itinerary.find_by(:id => params[:id])
    p @itinerary

    if @itinerary.update(itinerary_params)
      redirect_to itinerary_path(@itinerary)
    else
      @errors = @itinerary.errors.full_messages
      render :edit
    end
  end


  def show
    @itinerary = Itinerary.find_by(:id => params[:id])
  end


  def destroy
    @itinerary = Itinerary.find_by(:id => params[:id])
    @itinerary.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def itinerary_params
    params.permit(:name, :hotel, :flight_info, :arrival_date, :return_date)
  end

end