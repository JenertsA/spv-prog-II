class Car
  def initialize(manufacturer:, model:, color:, year:)
    @manufacturer = manufacturer
    @model = model
    @color = color
    @year = year
  end

  attr_reader :manufacturer, :model, :year
  attr_accessor :color

end

