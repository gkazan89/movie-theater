json.showtime_id showtime.id
json.time showtime.time.strftime("%b %e, %l:%M %p")
json.movie showtime.movie.name
json.theater showtime.theater_id
json.capacity showtime.theater.capacity
json.open_seats showtime.openSeats
json.buyTicket false
json.ticketSold 0