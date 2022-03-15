# frozen_string_literal: true

# Create User table
class DeviseCreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      # Database authenticatable

      t.string :wallet_address, null: false, default: ''
      t.string :encrypted_password, null: false, default: ''

      t.timestamps null: false
    end

    add_index :users, :wallet_address, unique: true
  end
end
