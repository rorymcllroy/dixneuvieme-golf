class Carsharing < ApplicationRecord
  belongs_to :driver, class_name: "User"
  belongs_to :golf
  belongs_to :city

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

  private 
  def date_not_in_past
    unless date.present? && date > DateTime.now
      errors.add(:start_date, "can't be in the past")
    end
  end

end
