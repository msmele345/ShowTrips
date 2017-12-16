class ItinerariesController < ApplicationController

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
       redirect_to user_path(current_user.id)
    else
      @errors = @itinerary.errors.full_messages
      render :new
    end
  end


  def show
  end


  def destroy
  end

  private

  def itinerary_params
    params.permit(:name, :hotel, :flight_info, :arrival_date, :return_date)
  end

end