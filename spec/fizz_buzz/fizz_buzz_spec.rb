# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzz do
  include FizzBuzz

  describe 'FizzBuzz' do
    it 'should return "Fizz"' do
      expect(fizz_buzz(3)).to eq('Fizz')
      expect(fizz_buzz(6)).to eq('Fizz')
      expect(fizz_buzz(9)).to eq('Fizz')
      expect(fizz_buzz(12)).to eq('Fizz')
    end

    it 'should return "Buzz"' do
      expect(fizz_buzz(5)).to eq('Buzz')
      expect(fizz_buzz(10)).to eq('Buzz')
    end

    it 'should return FizzBuzz' do
      expect(fizz_buzz(15)).to eq('FizzBuzz')
    end

    it 'should return the number' do
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
end
