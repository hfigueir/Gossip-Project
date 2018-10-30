class Gossip < ApplicationRecord
  belongs_to :author, optional: true
end
