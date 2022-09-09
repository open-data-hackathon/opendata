class Event < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :join_events, dependent: :destroy
  has_many :joined_users, through: :join_events, source: :user
  enum state: { open: 0, close: 1 }

  validates :title, presence: true, length: { maximum: 255 }
  validates :body, length: { maximum: 16_383 }
  validates :date, presence: true
  validates :member, numericality: { in: 1..99 }
end
