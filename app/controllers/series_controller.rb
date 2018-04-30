class SeriesController < ApplicationController
  def index
    @series = Serie.find_all
  end

  def show
    @serie = Serie.find(params[:id])
  end
end
