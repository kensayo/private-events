class UsersController < ApplicationController
  def index
    id = current_user.id
    @event = Event.where (user_id = '2')
    p @event.name
  end

  def show
    @user = User.find(params[:id])
    @event = Event.where(user_id: current_user.id)
  end

end
