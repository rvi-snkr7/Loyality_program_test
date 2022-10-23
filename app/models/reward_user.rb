class RewardUser < ApplicationRecord
  validates :reason, presence: true
end
