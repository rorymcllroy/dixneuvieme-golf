class CreateGolfcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :golfcomments do |t|
      t.text :content
      t.string :grade

      t.belongs_to :golf, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
