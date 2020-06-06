module FizzBuzz
  module MathGameRules
    def self.modulo(divisor, string)
      { condition: ->(a) { (a % divisor).zero? }, result: string }
    end

    def self.square_root(string)
      { condition: ->(n) { Math.sqrt(n) % 1 == 0 }, result: string }
    end

    def self.cube_root(string)
      { condition: ->(n) { Math.cbrt(n) % 1 == 0 }, result: string }
    end

    def self.fibonacci(divisor, string)
      fib = lambda do |n|
        n1, n2 = [0, 1]
        (n - 1).times { n1, n2 = n2, n1 + n2 }
        n1
      end

      { condition: ->(n) { (fib.call(n) % divisor).zero? }, result: string }
    end
  end
end
