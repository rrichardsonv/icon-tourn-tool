class Participant < ApplicationRecord
  validates :tag, presence: :true
end
