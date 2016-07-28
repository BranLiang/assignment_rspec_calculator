# Your code here
describe Calculator do

  let(:c){ Calculator.new }

  describe '#add' do
    it 'should sum two avlues together' do
      expect(c.add(1,2)).to eq(3)
    end
  end
end
