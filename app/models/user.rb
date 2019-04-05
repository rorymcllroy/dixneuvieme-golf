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

  def city_name
    city.try(:name)
  end

  def city_name=(name)
    self.city = City.find_or_create_by_name(name) if name.present?
  end

  has_many :golfcomments, dependent: :destroy
  has_many :drivers, foreign_key: 'driver_id', class_name: "Carsharing", dependent: :destroy
  has_many :passengers, foreign_key: 'passenger_id', class_name: "Passenger", dependent: :destroy
  has_many :carsharingreviews, foreign_key: 'passenger_id', class_name: "Carsharingreview", dependent: :destroy
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "Privatemessage", dependent: :destroy
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "Privatemessage", dependent: :destroy
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
