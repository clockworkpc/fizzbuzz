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

  describe 'FooBar' do
    it 'should return "Foo"' do
      expect(foo_bar(3)).to eq('Foo')
      expect(foo_bar(6)).to eq('Foo')
      expect(foo_bar(9)).to eq('Foo')
      expect(foo_bar(12)).to eq('Foo')
    end

    it 'should return "Bar"' do
      expect(foo_bar(5)).to eq('Bar')
      expect(foo_bar(10)).to eq('Bar')
    end

    it 'should return FooBar' do
      expect(foo_bar(15)).to eq('FooBar')
    end

    it 'should return the number' do
      expect(foo_bar(1)).to eq(1)
      expect(foo_bar(2)).to eq(2)
      expect(foo_bar(4)).to eq(4)
      expect(foo_bar(7)).to eq(7)
      expect(foo_bar(8)).to eq(8)
      expect(foo_bar(11)).to eq(11)
      expect(foo_bar(13)).to eq(13)
      expect(foo_bar(14)).to eq(14)
    end
  end

  describe 'BashCrash' do
    it 'should return "Bash"' do
      expect(bash_crash(4)).to eq('Bash')
      expect(bash_crash(8)).to eq('Bash')
      expect(bash_crash(12)).to eq('Bash')
      expect(bash_crash(16)).to eq('Bash')
    end

    it 'should return "Crash"' do
      expect(bash_crash(5)).to eq('Crash')
      expect(bash_crash(10)).to eq('Crash')
      expect(bash_crash(15)).to eq('Crash')
    end

    it 'should return BashCrash' do
      expect(bash_crash(20)).to eq('BashCrash')
    end

    it 'should return the number' do
      expect(bash_crash(1)).to eq(1)
      expect(bash_crash(2)).to eq(2)
      expect(bash_crash(3)).to eq(3)
      expect(bash_crash(6)).to eq(6)
      expect(bash_crash(7)).to eq(7)
      expect(bash_crash(11)).to eq(11)
      expect(bash_crash(13)).to eq(13)
      expect(bash_crash(14)).to eq(14)
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

    it 'should satisfy FooBar' do
      @range.each do |a|
        if (a % 3).zero? && (a % 5).zero?
          expect(foo_bar(a)).to eq('FooBar')
        elsif (a % 3).zero?
          expect(foo_bar(a)).to eq('Foo')
        elsif (a % 5).zero?
          expect(foo_bar(a)).to eq('Bar')
        else
          expect(foo_bar(a)).to eq(a)
        end
      end
    end

    it 'should satisfy BashCrash' do
      @range.each do |a|
        if (a % 4).zero? && (a % 5).zero?
          expect(bash_crash(a)).to eq('BashCrash')
        elsif (a % 4).zero?
          expect(bash_crash(a)).to eq('Bash')
        elsif (a % 5).zero?
          expect(bash_crash(a)).to eq('Crash')
        else
          expect(bash_crash(a)).to eq(a)
        end
      end
    end
  end
end
