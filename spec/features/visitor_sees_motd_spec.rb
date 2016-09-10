require 'rails_helper'

feature "visitor visits homepage", js: true do
  it "returns a author and message" do
    motd = create(:motd, current: true)

    visit '/'

    expect(page).to have_content(motd.message)
    expect(page).to have_content(motd.author)
  end
end
