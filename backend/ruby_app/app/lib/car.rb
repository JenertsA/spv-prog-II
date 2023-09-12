class Car
  def initialize(manufacturer:, model:, color:, year:, max_passenger_count: 5)
    @manufacturer = manufacturer
    @model = model
    @color = color
    @year = year
    @max_passenger_count = max_passenger_count
    @passengers = []
  end

  attr_reader(
    :manufacturer,
    :model,
    :year,
    :passengers,
    :max_passenger_count,
  )
  attr_accessor :color

  def passenger_count
    passengers.count
  end

  def add_passenger(passenger)
    passengers << passenger 
    # passengers.push(passenger) # another way of adding to array
  end

  def get_age
    Time.now.year - year
  end

  def full?
    return true if passenger_count >= max_passenger_count

    false
  end
end

