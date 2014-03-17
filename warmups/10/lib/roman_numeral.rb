require 'roman-numerals'

class RomanNumeral
  def self.translate(number)
#    return(RomanNumerals.to_roman(number))
    roman_array = ["I", "V", "X", "L", "C", "D", "M"]
    decimal_array = [1, 5, 10, 50, 100, 500, 1000]
    roman = ''
    while true
      decimal_value = decimal_array.pop
      roman_value = roman_array.pop
      if number >= decimal_value
        number_of_roman_digits = number / decimal_value
        roman += roman_value*number_of_roman_digits
        number -= decimal_value * number_of_roman_digits
      end
      if decimal_array.empty?
        return (roman)
      else
        if decimal_value.to_s.split("").first == "1"
          indexer = -2
        else
          indexer = -1
        end
        subtractor = decimal_array[indexer]
        roman_subtractor = roman_array[indexer]
      end
      if number >= decimal_value - subtractor
        roman += roman_subtractor + roman_value
        number -= decimal_value + subtractor
      end
    end
    if number >= 50
      roman += "L"
      number -= 50
    end
    if number >= 40
      roman += "XL"
      number -= 40
    end
    if number >= 10
      number_of_tens = number / 10
      roman += "X"*number_of_tens
      number -= 10 * number_of_tens
    end
    if number == 9
      roman += "IX"
      number -= 9
    end
    if number >= 5
      roman += "V"
      number -= 5
    end
    if number == 4
      roman += "IV"
      number -= 4
    end
    roman += "I"*number
    return(roman)
  end
end