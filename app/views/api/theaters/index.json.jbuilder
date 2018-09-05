json.array! @theaters.each do |theater|
  json.theater_id theater.id
  json.capacity theater.capacity
end