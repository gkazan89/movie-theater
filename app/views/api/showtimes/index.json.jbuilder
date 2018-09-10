# clean this up with a partial
json.array! @showtimes.each do |showtime|
  json.partial! "showtime.json.jbuilder", showtime: showtime
end