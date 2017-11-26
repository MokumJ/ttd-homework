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
     input.length!=4 ? @output.puts("Try guessing a number with four digits") : hint(input)
    end
    def hint(input)
       hint = ''
      for m in (0..3)
          if   input[m] == @secret_number[m]
            hint << '+'
          elsif @secret_number.include? input[m]
            hint << '-'
          end
        end
        @output.puts hint.split('').sort.join
    end
  end
end
