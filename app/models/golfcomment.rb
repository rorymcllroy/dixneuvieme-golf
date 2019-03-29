class Golfcomment < ApplicationRecord
  belongs_to :user
  belongs_to :golf

  validates :content,
  presence: true,
  length: { in: 1..140 }
  validates :grade,
  presence: true

end
