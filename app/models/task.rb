#
class Task < ApplicationRecord
  belongs_to :user
  belongs_to :tasktype
  enum status: [:todo, :progress, :done]
  validates :description, presence: true
end
