# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

genres = %w{
  Action
  Adventure
  Animation
  Biography
  Comedy
  Crime
  Documentary
  Drama
  Family
  Fantasy
  Film-Noir
  History
  Horror
  Music
  Musical
  Mystery
  Romance
  Sci-Fi
  Short
  Sport
  Thriller
  War
  Western
}
genres.each do |g| 
  Genre.create(name: g)
end

#Movie.create(title: "The Godfather", year: "1972", description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.")