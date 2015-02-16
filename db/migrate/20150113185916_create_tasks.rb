class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_title
      t.text :description
      t.text :instructions
      t.string :image

      t.timestamps
    end
  end
end
