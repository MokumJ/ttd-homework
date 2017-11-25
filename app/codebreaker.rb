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
       : hint(input)
     end
     def hint(input)
      hint1, hint2 = '' , ''
      (0..3).each do |m|
         if match(input, m)
            hint1 << '+'
         elsif matching_number(input, m)
            hint2 << '-'
         end
       end
       @output.puts hint1 + hint2
     end
     def matching_number(input, m)
      @secret_number.include?(input[m]) && !match(input, m)
    end
    def match(input, m)
    input[m] == @secret_number[m]
    end
  end
end
