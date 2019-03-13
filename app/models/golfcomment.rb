class Golfcomment < ApplicationRecord
  belongs_to :user
  belongs_to :golf

  validates :content,
  presence: true,
  length: { in: 20..1000 }
  validates :grade,
  presence: true

end
