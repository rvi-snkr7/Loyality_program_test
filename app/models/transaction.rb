# frozen_string_literal: true

class Transaction < ApplicationRecord
  validates :amount, presence: true
  validates :currency, presence: true
  belongs_to :user

  after_create :credit_points,:double_point_credit

  private
  def credit_points
    if self.amount > 100
      puts "You recieve 10 points"
    end
  end
  def double_point_credit
    if self.currency !="INR"
      puts "You recieve 20 standars point for making transaction in Foriegn country"
    end
  end

end
