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
    p"$$$$$$$$$$"
    p params

    if @itinerary.save
       redirect_to concert_path(params[:concert_id])
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
    params.permit(:hotel, :flight_info, :arrival_date, :return_date)
  end

end