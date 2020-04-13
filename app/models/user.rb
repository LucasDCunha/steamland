class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owns
  has_many :games, through: :owns
  has_many :bookings

  validates :first_name, presence: true
  validates :cpf, presence: true
  validates :cpf, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true

end
