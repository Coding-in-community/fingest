# frozen_string_literal: true

class User < ApplicationRecord

  validates :first_name, :last_name,:email, :password, presence: true
  validates :email, uniqueness: {message: 'an account associated with %{value} already exists '}
  validates :password, length: {:in 8..32} 
end
