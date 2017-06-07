require 'rails_helper'

describe Location do
  describe 'validations' do
    it 'is invalid without a location' do
      location = Location.new
      expect(location).to be_invalid
    end
    it 'has a unique location ' do
      Location.create!(location: 'Denver')
      location = Location.new(location: "Denver")

      expect(location).to be_invalid
    end
  end

  context 'valid attributes' do
    it 'is valid with a location' do
      location = Location.new(location: 'Denver')

      expect(location).to be_valid
    end
  end
  describe 'relationships' do
    it 'has many jobs' do
      location = Location.new(location: 'denver')
      expect(location).to respond_to(:companies)
    end
  end
end
