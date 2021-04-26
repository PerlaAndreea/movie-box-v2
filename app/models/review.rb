class Review < ApplicationRecord
    belongs_to :movie
    belongs_to :user
    
    validates :comment, length: { maximum: 140 }, presence: true
    validates :rating, presence: true
end
