class Room < ApplicationRecord
    has_many :contracts
    has_many :users, :through => :contracts
end
