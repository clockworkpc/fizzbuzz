require_relative 'fizz_buzz/math_games'

module FizzBuzz
  include MathGames

  def math_game_rule(input, rule)
    rule[:result] if rule[:condition].call(input)
  end

  def math_game_round(input, rules)
    result = rules.map { |rule| math_game_rule(input, rule) }.join
    result.empty? ? input : result
  end

  def fizz_buzz_round(input)
    math_game_round(input, MathGames.fizz_buzz)
  end

  def fizz_buzz(*inputs)
    inputs.flatten.map { |input| fizz_buzz_round(input) }
  end

  def fizz_bash_bang(input)
    math_game_round(input, MathGames.fizz_bash_bang)
  end

  def fizz_buzz_bash_boom(input)
    math_game_round(input, MathGames.fizz_buzz_bash_boom)
  end
end
