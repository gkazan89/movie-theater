json.array! @movies.each do |movie|
  json.name movie.name
  json.runtime movie.runtime
end