class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to @listing
    else
      render 'new'
    end
  end

  def index
    @listings = current_user.listings
  end

  def edit
  end

  def update
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def destroy
  end

  private
    def listing_params
      params.require(:listing).permit(:name,:description).merge(user_id: current_user.id)
    end
end