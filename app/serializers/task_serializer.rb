#
class TaskSerializer < ActiveModel::Serializer
  attributes :description, :status, :created_at, :updated_at
  belongs_to :user
  belongs_to :tasktype
end
