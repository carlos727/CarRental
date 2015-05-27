json.array!(@cars) do |car|
  json.extract! car, :id, :plate, :mileage, :capacity, :brand, :year, :color, :motor, :description, :gasoline, :transmision, :trunk, :door
  json.url car_url(car, format: :json)
end
