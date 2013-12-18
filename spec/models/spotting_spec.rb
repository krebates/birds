describe Spotting do
  describe '#bird_count' do
    it 'returns the number of times a type of bird was spotted' do
      FactoryGirl.create_list(:spotting, 2, bird_name: 'bluejay')
      FactoryGirl.create_list(:spotting, 3, bird_name: 'cardinal')
      FactoryGirl.create_list(:spotting, 1, bird_name: 'oriole')

      expect(Spotting.bird_count('bluejay')).to equal(2)
      expect(Spotting.bird_count('cardinal')).to equal(3)
    end
  end
end
