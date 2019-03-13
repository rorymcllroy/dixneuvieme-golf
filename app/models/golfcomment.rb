class Golfcomment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :golf, optional: true

  validates :content,
  presence: true,
  length: { in: 20..1000 }
  validates :grade,
  presence: true

end
