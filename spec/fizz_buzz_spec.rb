# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzz do
  include FizzBuzz

  describe 'FizzBuzz' do
    it 'should return "Fizz" for a number divisible by 3' do
      expect(fizz_buzz(3)).to eq('Fizz')
      expect(fizz_buzz(6)).to eq('Fizz')
      expect(fizz_buzz(9)).to eq('Fizz')
      expect(fizz_buzz(12)).to eq('Fizz')
    end

    it 'should return "Buzz" for a number divisible by 5' do
      expect(fizz_buzz(5)).to eq('Buzz')
      expect(fizz_buzz(10)).to eq('Buzz')
    end

    it 'should return FizzBuzz for a number divisible by both 3 and 5' do
      expect(fizz_buzz(15)).to eq('FizzBuzz')
    end

    it 'should return the number if the number is divisible by neither 3 nor 5' do
      expect(fizz_buzz(1)).to eq(1)
      expect(fizz_buzz(2)).to eq(2)
      expect(fizz_buzz(4)).to eq(4)
      expect(fizz_buzz(7)).to eq(7)
      expect(fizz_buzz(8)).to eq(8)
      expect(fizz_buzz(11)).to eq(11)
      expect(fizz_buzz(13)).to eq(13)
      expect(fizz_buzz(14)).to eq(14)
    end

    it 'should apply the rules of FizzBuzz' do
      (1..100).to_a.each do |a|
        result = fizz_buzz(a)
        puts result
        if a % 3 == 0 && a % 5 == 0
          expect(result).to eq('FizzBuzz')
        elsif a % 3 == 0
          expect(result).to eq('Fizz')
        elsif a % 5 == 0
          expect(result).to eq('Buzz')
        else
          expect(result).to eq(a)
        end
      end
    end
  end

  describe 'FizzBash' do
    it 'should return "Fizz" if divisible by 3' do
      expect(fizz_bash(3)).to eq('Fizz')
      expect(fizz_bash(6)).to eq('Fizz')
      expect(fizz_bash(12)).to eq('Fizz')
      expect(fizz_bash(15)).to eq('Fizz')
    end

    it 'should return "Bash" if square root is a whole number' do
      expect(fizz_bash(4)).to eq('Bash')
      expect(fizz_bash(25)).to eq('Bash')
      expect(fizz_bash(49)).to eq('Bash')
      expect(fizz_bash(64)).to eq('Bash')
      expect(fizz_bash(100)).to eq('Bash')
    end

    it 'should return "FizzBash" if divisible by 3 and square root is a whole number' do
      expect(fizz_bash(9)).to eq('FizzBash')
      expect(fizz_bash(36)).to eq('FizzBash')
      expect(fizz_bash(81)).to eq('FizzBash')
    end
  end

  describe 'Refined Tests' do
    before(:all) do
      @range = (1..100).to_a
    end

    it 'should satisfy FizzBuzz' do
      @range.each do |a|
        if (a % 3).zero? && (a % 5).zero?
          expect(fizz_buzz(a)).to eq('FizzBuzz')
        elsif (a % 3).zero?
          expect(fizz_buzz(a)).to eq('Fizz')
        elsif (a % 5).zero?
          expect(fizz_buzz(a)).to eq('Buzz')
        else
          expect(fizz_buzz(a)).to eq(a)
        end
      end
    end

    it 'should satisfy FizzBash' do
      @range.each do |a|
        if (a % 3).zero? && (Math.sqrt(a) % 1).zero?
          expect(fizz_bash(a)).to eq('FizzBash')
        elsif (a % 3).zero?
          expect(fizz_bash(a)).to eq('Fizz')
        elsif (Math.sqrt(a) % 1).zero?
          expect(fizz_bash(a)).to eq('Bash')
        else
          expect(fizz_bash(a)).to eq(a)
        end
      end
    end
  end
end
