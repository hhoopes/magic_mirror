require 'rails_helper'

RSpec.describe Motd, type: :model do
  it { should validate_presence_of (:author)}
  it { should validate_presence_of (:message)}

  let(:motd) { create(:motd, current: true) }

  describe "#current" do
    it "returns only one motd" do
      expect(Motd.current).to eq([])
      motd.current = true
      expect(Motd.current.first).to eq(motd)
    end
  end
end
