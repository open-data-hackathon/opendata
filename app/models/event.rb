class Event < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :join_events
  has_many :joined_users, through: :join_events, source: :events
end
