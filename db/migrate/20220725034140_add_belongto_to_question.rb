class AddBelongtoToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :Belongto, :string
  end
end
