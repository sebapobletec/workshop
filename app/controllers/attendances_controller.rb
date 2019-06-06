class AttendancesController < ApplicationController

  def new
    @attendance = Attendance.new
  end


  def create
    @attendance = Attendance.new

    @worker = Worker.find(params[:worker_id])
    @attendance.worker = @worker

    @event = Event.find(params[:event_id])
    @attendance.event = @event

    @attendance.save

    redirect_to company_event_path(params[:company_id], params[:event_id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
