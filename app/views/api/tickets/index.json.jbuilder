# clean this up with a partial
json.array! @tickets.each do |ticket|
  json.first_name ticket.user.first_name
  json.last_name ticket.user.last_name
  json.showtime_id ticket.showtime_id
  json.movie ticket.showtime.movie.name
  json.time ticket.showtime.time
  json.theater ticket.showtime.theater_id
  json.seat ticket.seat
end