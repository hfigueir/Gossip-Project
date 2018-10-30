class User < ApplicationRecord
  belongs_to :city
  has_and_belongs_to_many :private_messages
  has_many :gossips
  has_many :comments
  has_many :likes
end
