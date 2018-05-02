class CharactersController < ApplicationController
  before_action :set_character, except: [:index]


  def index
   @characters = Character.find_all
 end

 def show
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

 private

 def set_character
   @character = Character.find(params[:id])
 end
end
