class Compound_number

  def initialize
    @integer = 0
    @numerator = 0
    @denominator = 0
  end

  def to_compound(number_as_a_string)
    match_data = number_as_a_string.match('(\d-)+((\d)/(\d))')
    if match_data.nil?
      puts 'bad string given to to_compound'
    else
      @integer = match_data[1].chop
      @numerator = match_data[3]
      @denominator = match_data[4]
      return (self)
    end

  end
end

class Warmup06

  def initialize
    @integer = 0
    @numerator = 0
    @denominator = 0
  end

  def to_s
    output = ''
    if (@integer != 0)
      output += @integer.to_s
      non_zero = true
    end
    if (@numerator != 0)
      output += '-' if non_zero
      output += @numerator.to_s
      output += '/'
      output += @denominator.to_s
    elsif (!non_zero)
      output = '0'
    end
    return(output)
  end

  def add(first_fraction, second_fraction)

  end
end


