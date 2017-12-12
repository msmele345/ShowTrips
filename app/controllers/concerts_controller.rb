class ConcertsController < ApplicationController

  before_action :redirect_unless_logged_in, except: [:index, :show]

  def index
    @concerts = Concert.all.order(:date)
  end

  def show
    @concert = Concert.find_by(id: params[:id])
    render :show
  end

  def new
  end

  def create
  end



end