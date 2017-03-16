class LengthOfNumbers
  def self.new(numbers)
    # check if arg numbers is number
    if numbers.to_s =~ /^[0-9]*$/
      count = 1

      numbers.to_s.split('').map { |n| count = count + 1 }

      return count - 1
    else
      # convert negative numbers to positive numbers
      if numbers.to_s =~ /^[-]/
        positive_numbers = numbers.to_s.sub('-', '')

        self.new(positive_numbers)
      # handle decimal numbers
      elsif numbers.to_s =~ /^?[.]/
        rounded_numbers = numbers.to_s.split('.')
        real_rounded_numbers = rounded_numbers[0]

        self.new(real_rounded_numbers)
      else
        raise ArgumentError.new(numbers + " is not number")
      end
    end
  end

  def self.version
    '1.0.0'
  end
end
