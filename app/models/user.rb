class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: { message: 'Name cannot be blank' }
  validates :name, format: { with: /\A[a-zA-Z]+\z/,message: 'Letters only allowed' }

  has_many :training_events, dependent: :destroy
end
