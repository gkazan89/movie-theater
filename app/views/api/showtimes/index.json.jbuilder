# clean this up with a partial
json.array! @showtimes.each do |showtime|
  json.showtime_id showtime.id
  json.time showtime.time
  json.movie showtime.movie.name
  json.theater showtime.theater_id
end