class Search < ActiveRecord::Base
  attr_accessible :search
  
  def search
    
    movie_details = HTTParty.get("http://imdbapi.org/?title=iron+man&type=json")
    @searches = ActiveSupport::JSON.decode(movie_details)
  end
end
