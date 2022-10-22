# frozen_string_literal: true

json.extract! transaction_user, :id, :point, :created_at, :updated_at
json.url transaction_user_url(transaction_user, format: :json)
