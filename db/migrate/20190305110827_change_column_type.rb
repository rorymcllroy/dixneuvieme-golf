class ChangeColumnType < ActiveRecord::Migration[5.2]
  def change
    remove_column :golves, :description, :string
    add_column :golves, :description, :text
  end
end
