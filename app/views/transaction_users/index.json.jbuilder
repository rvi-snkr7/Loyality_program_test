# frozen_string_literal: true

json.array! @transaction_users, partial: 'transaction_users/transaction_user', as: :transaction_user
