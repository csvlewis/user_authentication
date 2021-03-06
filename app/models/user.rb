class User < ApplicationRecord
  validates_presence_of :name, :email, :password
  validates_uniqueness_of :email
end
