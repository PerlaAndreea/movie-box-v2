class Movie < ApplicationRecord
    belongs_to :user
    belongs_to :genre
    has_many :reviews
    
    validates :title, presence: true
    validates :description, presence: true
    validates :genre_id, presence: true
    validates :productionCompany, presence: true
    
    has_attached_file :movie_img, :styles => { :movie_index => "250x350>", :movie_show => "325x475>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :movie_img, :content_type => /\Aimage\/.*\Z/

end
