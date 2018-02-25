class CreateEngineers < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers do |t|
      t.string "first_name", :null => false
      t.string "last_name", :null => false

      t.timestamps
    end
  end
end
  