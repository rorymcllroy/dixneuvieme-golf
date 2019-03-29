class Carsharingreview < ApplicationRecord
  belongs_to :passenger, class_name: "User"
  belongs_to :carsharing

  validates :content,
  presence: true,
  length: { in: 1..140 }
  validates :grade,
  presence: true
  
end
