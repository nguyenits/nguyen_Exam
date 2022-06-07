class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
     t.integer :UserID 
      t.timestamps
    end
  end
end
