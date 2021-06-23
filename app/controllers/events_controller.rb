class EventsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create show]

  def index
    @events = Event.all
  end

  def create

  end

  def new

  end

  def show
    @events = Event.where( user_id:current_user.id )
  end
end
