class MotdSerializer < ActiveModel::Serializer
  attributes :id, :author, :message, :current
end
