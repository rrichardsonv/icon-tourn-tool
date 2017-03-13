class Signup < ApplicationRecord
  belongs_to :participant
  belongs_to :tournament

  validates :participant, :tournament, presence: true
end
