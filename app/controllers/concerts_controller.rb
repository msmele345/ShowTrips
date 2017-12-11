class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all.order(:date)
  end

end