require 'rails_helper'

feature 'visitor sees the current motd', js: true do
  let(:current_motd) { create(:motd, current: true) }
  let(:noncurrent_motd) { create(:motd, current: false) }

  scenario 'only current motd is displayed' do
    visit '/'

    expect(page).not_to have_content(noncurrent_motd.message)
    expect(page).not_to have_content(noncurrent_motd.author)
    expect(page).to have_content(current_motd.author)
    expect(page).to have_content(current_motd.author)
  end
end
