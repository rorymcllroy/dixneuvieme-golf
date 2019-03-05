class Carsharingreview < ApplicationRecord
  belongs_to :passenger, class_name: "User"
  belongs_to :carsharing
end
