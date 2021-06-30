class UsersController < ApplicationController
  def show
    @past_events = Event.attend_past(current_user.id)
    @upcoming_events = Event.attend_upcoming(current_user.id)
    @event = Event.where(user_id: current_user.id)
  end
end
