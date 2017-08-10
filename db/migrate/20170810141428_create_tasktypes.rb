class CreateTasktypes < ActiveRecord::Migration[5.1]
  def change
    create_table :tasktypes do |t|
      t.string :name
      t.timestamps
    end
  end
end
