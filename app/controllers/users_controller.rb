class UsersController < ApplicationController
  def index
    id = current_user.id
    @event = Event.where (user_id = '2')
    p @event.name
  end

  def show
    @past_events = Event.attend_past(current_user.id)
    @upcoming_events = Event.attend_upcoming(current_user.id)
    @event = Event.where(user_id: current_user.id)
  end

end

