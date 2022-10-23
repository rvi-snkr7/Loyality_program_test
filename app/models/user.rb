# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  # validates :dob, presence: true
  has_many :transactions
  has_many :transaction_users

end
