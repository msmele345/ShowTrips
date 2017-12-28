class ConcertsController < ApplicationController

  before_action :redirect_unless_logged_in, except: [:index, :show]

  def index
    @concerts = Concert.all.order(:date)
    @upcoming_concerts = @concerts.select {|concert| concert.upcoming?}
  end

  def show
    @concert = Concert.find_by(id: params[:id])
    # @songs = AppleResponse.grab_songs(@concert.band)
    @songs = grab_songs(@concert.band)
    render :show
  end

  def new
  end

  def create
  end



end