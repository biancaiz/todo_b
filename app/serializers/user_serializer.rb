#
class UserSerializer < ActiveModel::Serializer
  attributes :name
  has_many :tasks
end
