class Event < ApplicationRecord
  belongs_to :user
  enum state: { open: 0, close: 1 }
end
