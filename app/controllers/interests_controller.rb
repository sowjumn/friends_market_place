class InterestsController < ApplicationController
  def create
    puts interest_params
    interest = Interest.new(interest_params)
    if interest.save
      render json: interest
    end
  end

  def destroy
    interest = Interest.find(params[:id])
    interest.destroy
    render nothing: true
  end

  private 
    def interest_params
      params.require(:interest).permit(:listing_id,:user_id)
    end
end