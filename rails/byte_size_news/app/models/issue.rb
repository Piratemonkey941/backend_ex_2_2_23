class Issue < ApplicationRecord
  validates :title, :content, presence: true

  def self.search(query) 
    where("lower(content) LIKE :query OR lower(title) LIKE :query", query: "%#{query}%")
  end
end
