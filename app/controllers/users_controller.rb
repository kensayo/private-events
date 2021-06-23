class UsersController < ApplicationController

  def show
    @user = current_user
    @events = Event.where (user_id = @user.id.to_s)
  end

end
