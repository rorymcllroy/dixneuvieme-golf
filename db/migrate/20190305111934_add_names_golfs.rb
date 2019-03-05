class AddNamesGolfs < ActiveRecord::Migration[5.2]
  def change
    add_column :golves, :name, :string
  end
end
