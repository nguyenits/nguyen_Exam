class AddTopicToTestofuser < ActiveRecord::Migration[6.1]
  def change
    add_column :testofusers, :topic, :string
  end
end
