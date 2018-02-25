class CreateInstances < ActiveRecord::Migration[5.1]
  def change
    create_table :instances do |t|
      t.integer "client_id"
      t.string "url", :null => false
      t.string "token", :default => ""
      t.string "session", :default => ""  

      t.timestamps
    end
  end
end
  