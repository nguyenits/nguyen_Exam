class AddRoleToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :role, :string
  end
end
