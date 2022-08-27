class User < ApplicationRecord
  has_many :events
  has_many :join_events
  has_many :joined_events , through: :join_events, source: :users
end
