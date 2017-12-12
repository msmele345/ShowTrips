class AttendancesController < ApplicationController

  def new
    @attendance = Attendance.new
  end


  def create
    @attendance = Attendance.new
    @concert = Concert.find_by(id: params[:id])

    @attendance.attendee_id = current_user.id
    @attendance.concert_id = params[:concert_id]

    if @attendance.save
      redirect_to root_path
    else
      @errors = @attendance.errors.full_messages
      render :show
    end
  end



  def destroy
  end

end