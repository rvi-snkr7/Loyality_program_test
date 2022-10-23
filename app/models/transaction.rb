# frozen_string_literal: true

class Transaction < ApplicationRecord
  validates :amount, presence: true
  validates :currency, presence: true
  belongs_to :user

  after_create :credit_points

  private
  def credit_points
    if self.amount > 100
      puts "You recieve 10 points"
    end
  end
end
