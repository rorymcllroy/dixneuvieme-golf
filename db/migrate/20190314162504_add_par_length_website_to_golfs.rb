class AddParLengthWebsiteToGolfs < ActiveRecord::Migration[5.2]
  def change
    add_column :golves, :par, :string
    add_column :golves, :length, :string
    add_column :golves, :website, :string
  end
end
