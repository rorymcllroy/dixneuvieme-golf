class Golfcomment < ApplicationRecord
  belongs_to :user
  belongs_to :golf
end
