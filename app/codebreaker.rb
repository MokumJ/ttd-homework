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
        if input.length != 4
      output.puts "Try guessing a number with four digits"
      end
        hint = ''
        (0..3).each do |array|
          if matching_number(input, array)
           hint << '-'

          end
          end
      output.puts hint
        end

    def matching_number(input, array)
      @secret_number.include?(input[array])
  end
end
end
