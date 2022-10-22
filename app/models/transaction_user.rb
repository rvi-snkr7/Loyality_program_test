# frozen_string_literal: true

class TransactionUser < ApplicationRecord
    belongs_to :user
    belongs_to :transaction
end
