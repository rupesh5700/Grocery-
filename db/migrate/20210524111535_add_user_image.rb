# frozen_string_literal: true

class AddUserImage < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :avatar, :string
  end
end
