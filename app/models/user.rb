# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  # validates :dob, presence: true
  has_many :transactions
  has_many :transaction_users

  after_create :free_coffee_reward


  private
  def free_coffee_reward
    if self .dob
      puts "Free Coffee Reward"
    end
  end

end
