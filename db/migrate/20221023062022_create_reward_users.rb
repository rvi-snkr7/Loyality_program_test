class CreateRewardUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :reward_users do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :transaction,null: false, foreign_key: true
      t.timestamps
    end
  end
end
