class AddLevelToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :level, :string
  end
end
