class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all.order(:date)
  end

  def new
  end

  def create
  end

  def destroy

  end

end