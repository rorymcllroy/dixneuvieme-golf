class AddReadStatusPrivateMessage < ActiveRecord::Migration[5.2]
    def change
      add_column :privatemessages, :is_read, :boolean
    end
end
