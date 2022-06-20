class CreateTestofusers < ActiveRecord::Migration[6.1]
  def change
    create_table :testofusers do |t|
      t.string :userID
      t.string :test
      t.string :score

      t.timestamps
    end
  end
end
