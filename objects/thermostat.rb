 class Thermostat
  def initialize(setpoint_temp=72, inside_temp=68, outside_temp=32)
    @setpoint_temp = setpoint_temp
    @inside_temp = inside_temp
    @outside_temp = outside_temp
    @thermostat_on = false  # initially thermostat is not sending signal to run furnace
    @sim_time = Time.now
  end

  def setpoint
    @setpoint_temp
  end

  def set_to(setpoint_temp=72)
    @setpoint_temp = setpoint_temp
  end

  def inside_temp
    @inside_temp
  end

  def is_on   # return true if Thermostat is sending signal to furnace to run
    return(@thermostat_on)
  end

  def run(number_of_minutes)
    number_of_minutes.times do
      @sim_time += 1
      temp_diff = @inside_temp - @outside_temp
      @inside_temp -= temp_diff * 0.001   # temp drops proportional to temperature difference
      if (@thermostat_on)
        @inside_temp += 0.1 # furnace adds some heat
      end
      if (@thermostat_on && (@inside_temp > @setpoint_temp + 1.0))
        puts "#{@sim_time}: Temperature is now #{@inside_temp}. Thermostat has clicked 'off'"
        @thermostat_on = false
      elsif ((!@thermostat_on) && (@inside_temp < @setpoint_temp - 1.0))
        puts "#{@sim_time}: Temperature is now #{@inside_temp}. Thermostat has clicked 'on'"
        @thermostat_on = true
      else
        puts "#{@sim_time}: Temperature is now #{@inside_temp}."
      end
    end
  end
end
