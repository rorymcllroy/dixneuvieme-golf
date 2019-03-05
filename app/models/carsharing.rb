class Carsharing < ApplicationRecord
  belongs_to :driver, class_name: "User"
  belongs_to :golf
end
