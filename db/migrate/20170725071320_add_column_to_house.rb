class AddColumnToHouse < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :result, :string
  end
end
