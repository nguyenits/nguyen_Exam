class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :quetion
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :a4
      t.integer :ans
      t.timestamps
    end
  end
end

