class TrainingEvent < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :title, presence: { message: 'Please provide the event title'}

  enum status: { upcoming: 100, cancelled: 150, launched: 200 }
end
