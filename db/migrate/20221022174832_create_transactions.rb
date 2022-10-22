# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.string :currency
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
