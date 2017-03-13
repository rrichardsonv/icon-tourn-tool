class Participant < ApplicationRecord
  validates :tag, presence: :true
  has_many :signups
  has_many :tournaments, through: :signups
end
