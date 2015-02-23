module ApplicationHelper

  def current_user_interested?(listing_id)
    return false unless current_user
    all_interested_users = Interest.where(listing_id: listing_id).pluck(:user_id)
    all_interested_users.include?(current_user.id)
  end
end
