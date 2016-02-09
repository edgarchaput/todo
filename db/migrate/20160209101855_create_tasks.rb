class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :due_date
      t.string :date

      t.timestamps null: false
    end
  end
end
