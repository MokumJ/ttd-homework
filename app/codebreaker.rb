class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      @output.puts "Welcome to Codebreaker"
      @output.puts "Enter guess:"
    end

    def guess(input)
      input.length!=4 ? @output.puts("Try guessing a number with four digits")
       : @output.puts('+'*hint_plus(input) + '-'*hint_min(input))
   end
   def hint_plus(input)
      hint_plus = 0
      (0..3).each do |m|
       if match(input, m)
      hint_plus += 1
      end
    end
      hint_plus
  end
  def hint_min(input)
          hint_min = 0
         (0..3).each do |m|
    if matching_number(input, m)
        hint_min += 1
        end
      end
    hint_min
  end
  def matching_number(input, m)
      @secret_number.include?(input[m]) && !match(input, m)
    end
  def match(input, m)
    input[m] == @secret_number[m]
  end
end
end
