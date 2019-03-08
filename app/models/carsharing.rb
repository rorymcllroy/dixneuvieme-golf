class Carsharing < ApplicationRecord
  belongs_to :driver, class_name: "User"
  belongs_to :golf

  validates :date, 
  presence: true
  validates :places, 
  presence: true
  validates :description, 
  presence: true,
  length: { in: 20..1000 }
  validates :price,
  presence: true
  validate :date_not_in_past
  validate :multiple_of_5

  private 
  def date_not_in_past
    unless date.present? && date > DateTime.now
      errors.add(:start_date, "can't be in the past")
    end
  end

  def multiple_of_5
    unless price.present? && price % 5 == 0
      errors.add(:duration, "it should be a multiple of 5")    
    end
  end

end
