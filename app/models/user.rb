class User < ApplicationRecord
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :city, optional: true
  has_many :golfcomments
  has_many :drivers, foreign_key: 'driver_id', class_name: "Carsharing"
  has_many :passengers, foreign_key: 'passenger_id', class_name: "Passenger"
  has_many :carsharingreviews, foreign_key: 'passenger_id', class_name: "Carsharingreview"
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "Privatemessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "Privatemessage"
  has_one_attached :avatar

  validates :first_name, 
  presence: true
  validates :last_name, 
  presence: true
  validates :golf_level, 
  presence: true
  validates :description,
  presence: true,
  length: { in: 1..140 }

end
