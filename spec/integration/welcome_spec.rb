require 'rails_helper'
require 'spec_helper'

RSpec.describe "Home Page", type: :feature do
  describe "GET /" do
    before(:each) do
      u = Listing.create(name: 'Lotus Flower',description: 'My Best Lotus flower since the 60s',user_id: 1)
    end

    it "displays the listings", :js => true do
      visit '/'
      expect(page).to have_content 'Lotus Flower'
    end
  end
end
