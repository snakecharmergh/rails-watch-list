# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

List.create(id:1, name: "Drama")
List.create(id:2, name: "All times favourites")
List.create(id:3, name: "Girl Power")


# require "json"
# require "rest-client"

# TOP_STORIES_URL = "http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>"

# def TOP_STORIES_URL (id)
#   "http://tmdb.lewagon.com/movie/#{id}top_rated?api_key=<your_api_key>"
# end

# movie_ids = JSON.parse(RestClient.get(TOP_STORIES_URL))

# movie_ids.take(10).each do |id|
#   le_wagon_movie = JSON.parse(RestClient.get(story_url(id)))
#   movie = Movie.new(
#     title: le_wagon_movie["original_title"],
#     overview: le_wagon_movie["overview"],
#     poster_url: le_wagon_movie["poster_path"]
#     rating: le_wagon_movie["vote_average"]
#   )
#   post.save
#   puts "[#{movie.title}] #{movie.overview} - #{movie.poster_url} #{movie.rating}"
# end
