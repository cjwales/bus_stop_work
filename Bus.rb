class Bus

def initialize(number, destination, drive)
  @number = number
  @destination = destination
  @drive = drive
  @passengers = []
end

def drive()
  return @drive
end

def passenger_count()
  return @passengers.length()
end

def pickup_passenger(person)
  @passengers.push(person)
end

def dropoff_passenger(person)
  @passengers.delete(person)
end

def empty_bus()
  @passengers.clear()
end



end
