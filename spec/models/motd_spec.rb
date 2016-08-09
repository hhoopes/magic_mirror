require 'rails_helper'

RSpec.describe Motd, type: :model do
  it { should validate_presence_of (:author)}
  it { should validate_presence_of (:message)}
end
