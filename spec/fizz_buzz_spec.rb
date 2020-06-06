# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzz do
  include FizzBuzz

  let(:fizz_buzz_results) do
    %w[1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz]
  end

  let(:fizz_bash_bang_results) do
    %w[1]
  end

  describe 'FizzBuzz' do
    before(:all) do
      @inputs = (1..15).to_a
    end

    it 'should return "Fizz" for a number divisible by 3' do
      expect(fizz_buzz_round(3)).to eq('Fizz')
      expect(fizz_buzz_round(6)).to eq('Fizz')
      expect(fizz_buzz_round(9)).to eq('Fizz')
      expect(fizz_buzz_round(12)).to eq('Fizz')
    end

    it 'should return "Buzz" for a number divisible by 5' do
      expect(fizz_buzz_round(5)).to eq('Buzz')
      expect(fizz_buzz_round(10)).to eq('Buzz')
    end

    it 'should return FizzBuzz for a number divisible by both 3 and 5' do
      expect(fizz_buzz_round(15)).to eq('FizzBuzz')
    end

    it 'should return the number if the number is divisible by neither 3 nor 5' do
      expect(fizz_buzz_round(1)).to eq(1)
      expect(fizz_buzz_round(2)).to eq(2)
      expect(fizz_buzz_round(4)).to eq(4)
      expect(fizz_buzz_round(7)).to eq(7)
      expect(fizz_buzz_round(8)).to eq(8)
      expect(fizz_buzz_round(11)).to eq(11)
      expect(fizz_buzz_round(13)).to eq(13)
      expect(fizz_buzz_round(14)).to eq(14)
    end

    it 'should play FizzBuzz from 1 to 15' do
      game = fizz_buzz(@inputs)
      expect(game.map(&:to_s)).to eq(fizz_buzz_results)
    end
  end

  describe 'FizzBashBang' do
    it 'should play FizzBashBang from 1 to 729' do
      (1..729).to_a.each do |n|
        result = fizz_bash_bang(n)

        fizz = (n % 3).zero?
        bash = (Math.sqrt(n) % 1).zero?
        bang = (Math.cbrt(n) % 1).zero?

        if fizz && bash && bang
          expect(result).to eq('FizzBashBang')
        elsif fizz && bash && !bang
          expect(result).to eq('FizzBash')
        elsif fizz && !bash && bang
          expect(result).to eq('FizzBang')
        elsif fizz && !bang && !bash
          expect(result).to eq('Fizz')
        elsif !fizz && bash && bang
          expect(result).to eq('BashBang')
        elsif !fizz && bash && !bang
          expect(result).to eq('Bash')
        elsif !fizz && !bash && bang
          expect(result).to eq('Bang')
        else
          expect(result).to eq(n)
        end
      end
    end

    it 'should play FizzBashBang from 1 to 729, again' do
      (1..729).to_a.each do |n|
        result = fizz_bash_bang(n)

        fizz = 'Fizz' if (n % 3).zero?
        bash = 'Bash' if (Math.sqrt(n) % 1).zero?
        bang = 'Bang' if (Math.cbrt(n) % 1).zero?

        key = [fizz, bash, bang].join
        expected_result = key.empty? ? n : key

        expect(result).to eq(expected_result)
      end
    end
  end

  describe 'FizzBuzzBashBangBoom' do
    it 'should play FizzBuzzBashBangBoom from 1 to 1,000' do
      (1..10_000).to_a.each do |n|
        result = fizz_buzz_bash_boom(n)

        fizz = 'Fizz' if (n % 3).zero?
        buzz = 'Buzz' if (n % 5).zero?
        bash = 'Bash' if (Math.sqrt(n) % 1).zero?
        boom = 'Boom' if (fib(n) % 3).zero?

        key = [fizz, buzz, bash, boom].join
        puts "#{n} => #{result}" if result.to_s.match?('FizzBuzzBashBoom')
        expected_result = key.empty? ? n : key
        expect(result).to eq(expected_result)
      end
    end
  end

  def fib(n)
    n1, n2 = [0, 1]
    (n - 1).times { n1, n2 = n2, n1 + n2 }
    n1
  end
end
