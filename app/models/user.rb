# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  validates :birthday, presence: true
  has_many :transactions
  has_may :points
end
