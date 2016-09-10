require 'rails_helper'

feature 'weather displayed on front end', js: true do
  scenario "at an initial time" do
    VCR.use_cassette("weather time 1") do
      visit '/'

      expect(page).to have_content("Current weather conditions:")
      expect(page).to have_content("60")
    end
  end

end
