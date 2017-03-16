require 'test_helper'

describe LengthOfNumbers do
  it 'should return 3 if arg is 100' do
    length = LengthOfNumbers.new(100)
    assert_equal length, 3
  end

  it 'should return 3 if arg is decimal 100.2' do
    length = LengthOfNumbers.new(100.2)
    assert_equal length, 3
  end

  it 'should return ArgumentError if arg is not number' do
    assert_raises(ArgumentError) { LengthOfNumbers.new('invalid') }
  end

  it 'should return 3 if arg negative number of -100' do
    length = LengthOfNumbers.new(-100)
    assert_equal length, 3
  end
end
