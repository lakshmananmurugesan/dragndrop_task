class CreateDrags < ActiveRecord::Migration
  def change
    create_table :drags do |t|
      t.text :name
      t.integer :position

      t.timestamps
    end
  end
end
