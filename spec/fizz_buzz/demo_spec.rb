# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzz::Demo do
  it 'hello world' do
    expect(subject.methods).to eq(FizzBuzz::Demo.new.methods)
    expect(subject.hello_world).to eq('hello')
    # expect(subject.new.hello_world).to eq('hello world')
  end
end
