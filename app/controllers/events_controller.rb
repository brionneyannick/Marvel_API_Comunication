class EventsController < ApplicationController
  def index
    @events = Event.find_all
  end

  def show
    @event = Event.find(params[:id])
  end
end
