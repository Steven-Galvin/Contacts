require "address"
require "rspec"
require "pry"

describe Address do

  describe('#street') do
    it('returns the street of the address') do
      test_address = Address.new({:street => '123 Test St.', :city => 'Portland'})
      expect(test_address.street()).to(eq('123 Test St.'))
    end
  end

  describe('#city') do
    it('returns the city of the address') do
      test_address = Address.new({:street => '123 Test St.', :city => 'Portland'})
      expect(test_address.city()).to(eq('Portland'))
    end
  end
end
