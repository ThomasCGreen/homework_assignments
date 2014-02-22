class Warmup05
  def initialize
	  @word_lengths = Hash.new(0)
	  @letters = Hash.new(0)
	  File.open("/usr/share/dict/words").each_line do |line|
      @word_lengths[line.length] += 1
		  line.downcase.chars {|char|
			  @letters[char] += 1
      }
	  end
  end

  def letters
    @letters
  end

  def most_common_vowel
    max_count = 0
    max_letter = ''
    "aeiou".chars {|letter|
      if max_count < @letters[letter]
        max_count = @letters[letter]
        max_letter = letter
      end
    }
    return([max_letter, max_count])
  end

  def most_common_consonant
    max_count = 0
    max_letter = ''
    "bcdfghjklmnpqrstvwxyz".chars {|letter|
      if max_count < @letters[letter]
        max_count = @letters[letter]
        max_letter = letter
      end
    }
    return([max_letter, max_count])
  end

  def most_common_length
    max_length = -1
    max_letter_count = -1
    @word_lengths.each_key {|length|
      if max_length < @word_lengths[length]
        max_length = @word_lengths[length]
        max_letter_count = length
      end
    }
    return([max_letter_count, max_length])
  end
end

