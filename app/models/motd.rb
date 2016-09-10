class Motd < ActiveRecord::Base
  validates :author, presence: true
  validates :message, presence: true

  scope :current, -> { where(current: true) }
end
