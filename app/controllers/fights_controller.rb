class FightsController < ApplicationController
  def index
    @fights = Fight.all
  end

  def destroy_all
    Fight.destroy_all
    respond_to do |format|
      format.html { redirect_to people_path }
      format.json { head :no_content }
    end
  end

end
