class CreateMigrations < ActiveRecord::Migration[5.1]
  def change
    create_table :migrations do |t|
      t.integer "engineer_id", :null => false
      t.integer "client_id", :null => false
      t.integer "file_count"
      t.integer "elapsed_time"
      t.timestamps
    end
  end
end
