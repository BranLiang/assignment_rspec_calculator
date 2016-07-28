# Your code here
require 'calculator.rb'

describe Calculator do

  let(:c){ Calculator.new }

  describe '#add' do
    it 'should sum two posive integers' do
      expect(c.add(1, 2)).to eq(3)
    end
    it 'should sum two floats' do
      expect(c.add(1.1, 2.3)).to eq(3.4)
    end
    it 'should sum two negative values' do
      expect(c.add(-1, -2.1)).to eq(-3.1)
    end
  end

  describe '#subtract' do
    it 'should subtract the second number from the first one' do
      expect(c.subtract(1, 2)).to eq(-1)
    end
    it 'should subtract negative values' do
      expect(c.subtract(1, -2)).to eq(3)
    end
    it 'should subtract floats' do
      expect(c.subtract(1.1, -3.4)).to eq(4.5)
    end
  end

  describe '#multiply' do
    it 'should multiply two integers numbers together' do
      expect(c.multiply(2, 3)).to eq(6)
    end
    it 'should multiply two floats' do
      expect(c.multiply(2.5, 10.0)).to eq(25)
    end
  end

  describe '#divide' do
    it 'should divide the first value by the second value' do
      expect(c.divide(4, 2)).to eq(2)
    end
    it 'should return a float value' do
      expect(c.divide(2, 3)).to be_within(0.0001).of(0.66666)
    end
    it 'should raise ArgumentError when 0 is the divider' do
      expect{c.divide(5, 0)}.to raise_error(ArgumentError)
    end
  end

  describe '#pow' do
    it 'should power two positive integers' do
      expect(c.pow(3, 3)).to eq(27)
    end
    it 'should support float power' do
      expect(c.pow(27, 1/3.0)).to eq(3)
    end
    it 'should support negative power' do
      expect(c.pow(10, -1)).to eq(0.1)
    end
  end

  describe '#sqrt' do
    it 'should sqrt an integer' do
      expect(c.sqrt(9)).to eq(3)
    end
    it 'should be able to return a float' do
      expect(c.sqrt(8)).to be_within(0.01).of(2.83)
    end
  end

  describe '#memory' do
    it 'should return nil when not assigned' do
      expect(c.memory).to be_nil
    end
    it 'should return the when assigned a value' do
      expect(c.memory=(8)).to eq(8)
    end
    it 'should remember the value' do
      c.memory=(8)
      expect(c.memory).to eq(8)
    end
  end

  describe '#stingnify' do
    it 'should return a string when the instance is stringnified' do
      c2 = Calculator.new(true)
      expect(c2.add(1, 2)).to eq('3')
    end
  end
end
