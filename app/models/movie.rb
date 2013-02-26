class Movie < ActiveRecord::Base
  attr_accessible :description, :genre_id, :title, :year
  
  validates :title, :year, :description, :genre_id, presence: true
  
  belongs_to :genre
end
