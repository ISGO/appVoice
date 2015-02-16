class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :link_title
      t.string :url
      t.string :link_type
      t.references :task

      t.timestamps
    end
  end
end
