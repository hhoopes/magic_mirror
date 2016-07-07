require 'rails_helper'

describe "motd/current#show API" do
  it "displays a message of the day" do
    motd = create(:motd)

    get "/api/v1/motds/current/"

    expect(response).to be_success
    json = JSON.parse(response.body)

    expect(json.first["id"]).to eq(motd.id)
    expect(json.first["message"]).to eq(motd.message)
    expect(json.first["author"]).to eq(motd.author)
  end
end
