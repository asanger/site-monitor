class SitesController < ApplicationController

  def index
  	# TODO: Potentially limit this with filtering or pagination.
  	@sites = Site.all
  end


  def show
  end


  def new
  end


  def create
  end


  def update
  end


  def destroy
  end

end
