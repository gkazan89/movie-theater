# clean this up with a partial
json.array! @showtimes.each do |showtime|
  json.showtime_id showtime.id
  json.time showtime.time
  json.movie showtime.movie.name
  json.theater showtime.theater_id
  json.capacity showtime.theater.capacity
  json.open_seats showtime.openSeats
  json.buyTicket false
  json.ticketSold 0
end