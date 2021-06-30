class EventsController < ApplicationController
  before_action :authenticate_user!, only: %i[index]
end
