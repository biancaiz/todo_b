#
class TaskSerializer < ActiveModel::Serializer
  attributes :description, :status
  belongs_to :user
  belongs_to :tasktype
end
