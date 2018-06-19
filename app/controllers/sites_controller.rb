class SitesController < ApplicationController

  def index
  	# TODO: Potentially limit this with filtering or pagination.
  	@sites = Site.all
  end


  def new
  	@site = Site.new
  end


  def show
    @site = Site.find(params[:id])
    @recent_checks = @site.checks.order(created_at: :desc).limit(10)
  end


  def create
    @site = Site.new(site_params)

    if @site.save
      flash[:success] = "Site has been added successfully."
      redirect_to sites_path
    else
      flash[:error] = "Sorry, something went wrong."
      render new_site_path
    end
  end


  def update
  end


  def destroy
  end


 private

	def site_params
	  params.require(:site).permit(:url)
	end

end
