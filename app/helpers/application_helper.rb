module ApplicationHelper

  def current_user_interested?(listing_id)
    return false unless current_user
    all_interested_users = Interest.where(listing_id: listing_id).pluck(:user_id)
    all_interested_users.include?(current_user.id)
  end

  def get_interest_id(listing_id)
    return false unless current_user
    interest = Interest.where(listing_id: listing_id,user_id: current_user.id).first
    return interest.id if interest
  end
end
