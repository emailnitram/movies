class IMDBSearcher
  def search(search)
    raw_result = search || "man on fire"
    result = raw_result.gsub(/\s+/, "+")
    movie_details = HTTParty.get("http://imdbapi.org/?title="+result+"&type=json")

    ActiveSupport::JSON.decode(movie_details)      
  end
end
