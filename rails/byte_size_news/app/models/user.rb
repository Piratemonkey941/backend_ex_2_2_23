class User < ApplicationRecord
    validates :first_name, :last_name, presence: true

    def self.search(query) 
      where("lower(last_name) LIKE :query OR lower(first_name) LIKE :query", query: "%#{query}%")
    
    end
end
