class IntinerariesController < ApplicationController

  def new
    @intinerary = Intinerary.new
    render 'itineraries/new'
  end

  def create
  end

  def show
  end


  def destroy
  end

end