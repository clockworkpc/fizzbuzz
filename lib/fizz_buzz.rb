# frozen_string_literal: true

module FizzBuzz
  def fizz_buzz(a)
    if a % 3 == 0 && a % 5 == 0
      'FizzBuzz'
    elsif a % 3 == 0
      'Fizz'
    elsif a % 5 == 0
      'Buzz'
    else
      a
    end
  end

  def fizz_buzz(a)
    if a % 3 == 0 && a % 5 == 0
      fizz = 'Fizz'
      buzz = 'Buzz'
    elsif a % 3 == 0
      fizz = 'Fizz'
      buzz = nil
    elsif a % 5 == 0
      fizz = nil
      buzz = 'Buzz'
    else
      a
    end
    fizz.nil? && buzz.nil? ? a : [fizz, buzz].join
  end

  def fizz_buzz(a)
    if a % 3 == 0 && a % 5 == 0
      fizz = 'Fizz'
      buzz = 'Buzz'
    elsif a % 3 == 0
      fizz = 'Fizz'
    elsif a % 5 == 0
      buzz = 'Buzz'
    end
    fizz.nil? && buzz.nil? ? a : [fizz, buzz].join
  end

  def fizz_buzz(a)
    fizz = 'Fizz' if a % 3 == 0
    buzz = 'Buzz' if a % 5 == 0
    fizz.nil? && buzz.nil? ? a : [fizz, buzz].join
  end

  def modulo_string_or_integer(dividend, hsh_ary)
    str = hsh_ary.map do |hsh|
      hsh[:output] if dividend % hsh[:divisor] == 0
    end.join
    str.empty? ? dividend : str
  end

  def fizz_buzz(a)
    hsh_ary = [
      { divisor: 3, output: 'Fizz' },
      { divisor: 5, output: 'Buzz' }
    ]
    modulo_string_or_integer(a, hsh_ary)
  end

  def conditional_string_or_integer(input, hsh_ary)
    s = hsh_ary.map { |hsh| hsh[:output] if hsh[:condition].call(input) }.join
    s.empty? ? input : s
  end

  def fizz_buzz(a)
    fizz_condition = ->(input) { input % 3 == 0 }
    buzz_condition = ->(input) { input % 5 == 0 }

    hsh_ary = [
      { condition: fizz_condition, output: 'Fizz' },
      { condition: buzz_condition, output: 'Buzz' }
    ]
    conditional_string_or_integer(a, hsh_ary)
  end

  def fizz_bash(a)
    fizz_condition = ->(input) { input % 3 == 0 }
    bash_condition = ->(input) { Math.sqrt(input) % 1 == 0 }

    hsh_ary = [
      { condition: fizz_condition, output: 'Fizz' },
      { condition: bash_condition, output: 'Bash' }
    ]
    conditional_string_or_integer(a, hsh_ary)
  end

  def fizz_buzz(a)
    hsh_ary = [
      { condition: ->(a) { a % 3 == 0 }, output: 'Fizz' },
      { condition: ->(a) { a % 5 == 0 }, output: 'Buzz' }
    ]
    conditional_string_or_integer(a, hsh_ary)
  end

  def fizz_bash(a)
    hsh_ary = [
      { condition: ->(a) { a % 3 == 0 }, output: 'Fizz' },
      { condition: ->(a) { Math.sqrt(a) % 1 == 0 }, output: 'Bash' }
    ]
    conditional_string_or_integer(a, hsh_ary)
  end

  def test_hash_array(*hashes)
    hashes.map { |hsh| { condition: hsh[0], output: hsh[1] } }
  end

  def fizz_buzz(a)
    fizz = [->(a) { a % 3 == 0 }, 'Fizz']
    buzz = [->(a) { a % 5 == 0 }, 'Buzz']
    hsh_ary = test_hash_array(fizz, buzz)
    conditional_string_or_integer(a, hsh_ary)
  end

  def fizz_bash(a)
    fizz = [->(a) { a % 3 == 0 }, 'Fizz']
    bash = [->(a) { Math.sqrt(a) % 1 == 0 }, 'Bash']
    hsh_ary = test_hash_array(fizz, bash)
    conditional_string_or_integer(a, hsh_ary)
  end

  def modulo_io(n, str)
    [->(a) { a % n == 0 }, str]
  end

  def sqrt_io(str)
    [->(a) { Math.sqrt(a) % 1 == 0 }, str]
  end

  def fizz_buzz(a)
    fizz = modulo_io(3, 'Fizz')
    buzz = modulo_io(5, 'Buzz')
    hsh_ary = test_hash_array(fizz, buzz)
    conditional_string_or_integer(a, hsh_ary)
  end

  def fizz_bash(a)
    fizz = modulo_io(3, 'Fizz')
    bash = sqrt_io('Bash')
    hsh_ary = test_hash_array(fizz, bash)
    conditional_string_or_integer(a, hsh_ary)
  end

  def fizz_buzz_io
    [modulo_io(3, 'Fizz'), modulo_io(5, 'Buzz')]
  end

  def fizz_bash_io
    [modulo_io(3, 'Fizz'), sqrt_io('Bash')]
  end

  def foo_bar_io
    [modulo_io(3, 'Foo'), modulo_io(5, 'Bar')]
  end

  def bash_crash_io
    [modulo_io(4, 'Bash'), modulo_io(5, 'Crash')]
  end

  def fizz_buzz(a)
    fizz, buzz = fizz_buzz_io
    conditional_string_or_integer(a, test_hash_array(fizz, buzz))
  end

  def fizz_bash(a)
    fizz, bash = fizz_bash_io
    conditional_string_or_integer(a, test_hash_array(fizz, bash))
  end

  def foo_bar(a)
    foo, bar = foo_bar_io
    conditional_string_or_integer(a, test_hash_array(foo, bar))
  end

  def bash_crash(a)
    bash, crash = bash_crash_io
    conditional_string_or_integer(a, test_hash_array(bash, crash))
  end

  def game_rules(io_ary)
    io_ary.map { |io| { condition: io[0], result: io[1] } }
  end

  def fizz_buzz_rules
    game_rules(fizz_buzz_io)
  end

  def fizz_bash_rules
    game_rules(fizz_bash_io)
  end

  def play_rule(input, rule)
    rule[:result] if rule[:condition].call(input)
  end

  def play_game(input, rules)
    s = rules.map { |rule| play_rule(input, rule) }.join
    s.empty? ? input : s
  end

  def fizz_buzz(a)
    play_game(a, fizz_buzz_rules)
  end

  def fizz_bash(a)
    play_game(a, fizz_bash_rules)
  end
end
