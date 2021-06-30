class EventsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create show]

  def index
    @upcoming = Event.upcoming
    @past = Event.past
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    @attend = @event.attendances.where(user_id: current_user.id).blank?
    @will = @event.attendances.where(user_id: current_user.id)
    @total = @event.attendances.count
  end

  private

  def event_params
    params.require(:event).permit(:date, :description, :name)
  end
end
