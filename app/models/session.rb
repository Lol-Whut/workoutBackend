class Session < ApplicationRecord
  belongs_to :user
  has_many :session_exercises
end
