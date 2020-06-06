require_relative 'math_game_rules'

module FizzBuzz
  module MathGames
    def self.fizz_buzz
      [
        MathGameRules.modulo(3, 'Fizz'),
        MathGameRules.modulo(5, 'Buzz')
      ]
    end

    def self.fizz_bash_bang
      [
        MathGameRules.modulo(3, 'Fizz'),
        MathGameRules.square_root('Bash'),
        MathGameRules.cube_root('Bang')
      ]
    end

    def self.fizz_buzz_bash_boom
      [
        MathGameRules.modulo(3, 'Fizz'),
        MathGameRules.modulo(5, 'Buzz'),
        MathGameRules.square_root('Bash'),
        MathGameRules.fibonacci(3, 'Boom')
      ]
    end
  end
end
