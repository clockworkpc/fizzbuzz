# frozen_string_literal: true

module FizzBuzz
  # def fizz_buzz(a)
  #   if a % 3 == 0 && a % 5 == 0
  #     'FizzBuzz'
  #   elsif a % 3 == 0
  #     'Fizz'
  #   elsif a % 5 == 0
  #     'Buzz'
  #   else
  #     a
  #   end
  # end

  # def foo_bar(a)
  #   if a % 3 == 0 && a % 5 == 0
  #     'FooBar'
  #   elsif a % 3 == 0
  #     'Foo'
  #   elsif a % 5 == 0
  #     'Bar'
  #   else
  #     a
  #   end
  # end

  # def bash_crash(a)
  #   if a % 4 == 0 && a % 5 == 0
  #     'BashCrash'
  #   elsif a % 4 == 0
  #     'Bash'
  #   elsif a % 5 == 0
  #     'Crash'
  #   else
  #     a
  #   end
  # end

  def modulo_strings(a, hsh)
    ary = hsh.map { |k, v| (a % v).zero? ? k.to_s.capitalize : nil }
    ary.compact.empty? ? a : ary.join
  end

  def fizz_buzz(a)
    modulo_strings(a, { fizz: 3, buzz: 5 })
  end

  def foo_bar(a)
    modulo_strings(a, { foo: 3, bar: 5 })
  end

  def bash_crash(a)
    modulo_strings(a, { bash: 4, crash: 5 })
  end
end
