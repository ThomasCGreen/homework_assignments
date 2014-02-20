class Thermostat

  def initialize(inside_temp=68.0, set_point=72.0, outside_temp=32.0)
    @inside_temp = inside_temp
    @set_point = set_point
    @outside_temp = outside_temp
    @on = false
  end

  def inside_temp
    return(@inside_temp)
  end

  def set_point(new_set_point)
    @set_point = new_set_point
  end

  def set_point?
    return(@set_point)
  end

  def is_on?
    return(@on)
  end

  def run(number_of_minutes)
    number_of_minutes.times do
      temp_difference = @inside_temp - @outside_temp
      @inside_temp -= temp_difference * 0.001  # change due to outside temperature
      if (@on)
        @inside_temp += 0.1 # furnace adds some heat
        if (inside_temp > (@set_point + 1.0))
          @on = false
        end
      end
      if ((!@on) && (inside_temp < (@set_point - 1.0)))
        @on = true
      end
    end
    return(@on)
  end

end