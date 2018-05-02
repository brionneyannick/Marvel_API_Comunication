class CharactersController < ApplicationController
  def index
   @characters = Character.find_all
 end

 def show
   @character = Character.find(params[:id])
 end

 def comics
   @comics = Comic.by_character(params[:id])
 end

 def events
   @events = Event.by_character(params[:id])
 end

 def series
   @series = Serie.by_character(params[:id])
 end
end
