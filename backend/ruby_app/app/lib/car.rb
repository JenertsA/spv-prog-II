class Car
  def initialize(manufacturer:, model:, color:, year:)
    @manufacturer = manufacturer
    @model = model
    @color = color
    @year = year
  end

  attr_reader :manufacturer, :model, :color, :year

  def color=(new_color)
    @color = new_color
  end
  
end

