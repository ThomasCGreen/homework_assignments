class Thermometer

  def initialize(temperature=0)
    @temperature = temperature  # temperature in farenheit
  end

  def to_c
    return((@temperature - 32) * 100/212)
  end

  def to_f
    return(@temperature)
  end

  def from_celsius(celsius_temperature)
    @temperature = (celsius_temperature * 212 / 100) + 32
  end

  def <
end