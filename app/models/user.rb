class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :customer

  before_save { |user| user.username = user.username.downcase }

  validates :username, presence: true
  validates_confirmation_of :password
end
