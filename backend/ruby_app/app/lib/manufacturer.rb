class Manufacturer

  def initialize(name:, country:)
    @name = name
    @country = country
  end

  attr_reader :name, :country
end
