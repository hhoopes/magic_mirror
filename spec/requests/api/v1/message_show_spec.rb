require 'rails_helper'

describe "motd/current#show API" do
  it "displays a message of the day" do
    motd = create(:motd, current: true)

    get "/api/v1/motds/current/"

    expect(response).to be_success
    json = JSON.parse(response.body)

    expect(json["data"]["id"].to_i).to eq(motd.id)
    expect(json["data"]["attributes"]["message"]).to eq(motd.message)
    expect(json["data"]["attributes"]["author"]).to eq(motd.author)
  end
end
