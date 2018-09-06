json.array! @movies.each do |movie|
  json.name movie.name
  json.movie_id movie.id
  json.runtime movie.runtime
end