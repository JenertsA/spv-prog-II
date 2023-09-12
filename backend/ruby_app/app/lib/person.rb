class Person

  def initialize(name:, surname:, birth_date:)
    @name = name
    @surname = surname
    @birth_date = birth_date
  end

  attr_reader :name, :surname, :birth_date
end
