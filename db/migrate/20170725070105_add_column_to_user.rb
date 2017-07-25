class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :result, :string
  end
end
