class StatusUpdate < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :status, :integer, default: 0, index: true
    add_reference :tasks, :user, index: true, foreign_key: true
    add_reference :tasks, :tasktype, index: true, foreign_key: true
  end
end
