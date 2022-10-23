# frozen_string_literal: true

class Transaction < ApplicationRecord
  validates :amount, presence: true
  validates :currency, presence: true
  belongs_to :user

  after_create :credit_points, :double_point_credit, :total_amount

  private

  def credit_points
    if self.amount > 100
      puts "You recieve 10 points"
    end
  end

  def double_point_credit
    if self.currency != "INR"
      puts "You recieve 20 standars point for making transaction in Foriegn country"
    end
  end

  def cash_rebate
    if Transaction.where(user_id:user).count >10
      puts "You Earned! 5% Cash Rebate reward"
end
  end

  def total_amount
    a = Transaction.where(user_id: 18 ).sum(:amount)
      if a>1000
        puts 'Free Movie Ticket'
      end
  end

end
