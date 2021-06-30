class AttendancesController < ApplicationController
  def create
    @attend = Attendance.new event_id: params[:event_id], user_id: current_user.id
    @attend.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @attend = Event.find(params[:event_id]).attendances.find(params[:id])
    @attend.destroy
    redirect_back(fallback_location: root_path)
  end
end
