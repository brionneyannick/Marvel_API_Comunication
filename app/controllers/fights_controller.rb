class FightsController < ApplicationController
  def index
    @fights = Fight.all
  end

  def show
  end
end