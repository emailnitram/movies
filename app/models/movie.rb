class Movie < ActiveRecord::Base
  attr_accessible :description, :title, :year, :genre_ids
  
  validates :title, :year, :description, presence: true
  
  has_and_belongs_to_many :genres
end
