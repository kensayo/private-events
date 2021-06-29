class AttendancesController < ApplicationController
  def create
    @attend = Attendance.new event_id: params[:event_id], user_id: current_user.id
    @attend.save
    p 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaas'
    redirect_to event_path(params[:event_id])
  end

  def destroy
    @attend = Event.find(params[:event_id]).attendances.find(params[:id])
    @attend.destroy
    redirect_to event_path(params[:event_id])
  end
end
