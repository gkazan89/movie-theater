# clean this up with a partial
json.array! @tickets.each do |ticket|
  json.first_name ticket.user.first_name
  json.last_name ticket.user.last_name
  json.movie ticket.showtime.movie.name
  json.theater ticket.showtime.theater_id
  json.seat ticket.seat
end