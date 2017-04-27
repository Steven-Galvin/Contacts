require "address"
require "rspec"
require "pry"

describe Address do

  describe('#street') do
    it('returns the street of the address') do
      test_address = Address.new({:street => '123 Test St.', :city => 'Portland', :state => "OR", :zipcode => "97236", :type => "Home"})
      expect(test_address.street()).to(eq('123 Test St.'))
    end
  end

  describe('#city') do
    it('returns the city of the address') do
      test_address = Address.new({:street => '123 Test St.', :city => 'Portland', :state => "OR", :zipcode => "97236", :type => "Home"})
      expect(test_address.city()).to(eq('Portland'))
    end
  end

  describe('#state') do
    it('returns the state of the address') do
      test_address = Address.new({:street => '123 Test St.', :city => 'Portland', :state => "OR", :zipcode => "97236", :type => "Home"})
      expect(test_address.state()).to(eq('OR'))
    end
  end

  describe('#zipcode') do
    it('returns the zipcode of the address') do
      test_address = Address.new({:street => '123 Test St.', :city => 'Portland', :state => "OR", :zipcode => "97236", :type => "Home"})
      expect(test_address.zipcode()).to(eq('97236'))
    end
  end

  describe('#type') do
    it('returns the type of the address') do
      test_address = Address.new({:street => '123 Test St.', :city => 'Portland', :state => "OR", :zipcode => "97236", :type => "Home"})
      expect(test_address.type()).to(eq('Home'))
    end
  end

  describe('#id') do
    it('returns the ID of the address') do
      test_address = Address.new({:street => '123 Test St.', :city => 'Portland', :state => "OR", :zipcode => "97236", :type => "Home"})
      expect(test_address.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('returns an empty array') do
      test_address = Address.new({:street => '123 Test St.', :city => 'Portland', :state => "OR", :zipcode => "97236", :type => "Home"})
      expect(Address.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('returns an all addresses') do
      test_address = Address.new({:street => '123 Test St.', :city => 'Portland', :state => "OR", :zipcode => "97236", :type => "Home"})
      test_address.save
      expect(Address.all()).to(eq([test_address]))
    end
  end

  describe('.clear') do
    it('returns an empty array') do
      test_address = Address.new({:street => '123 Test St.', :city => 'Portland', :state => "OR", :zipcode => "97236", :type => "Home"})
      test_address.save
      expect(Address.clear()).to(eq([]))
    end
  end

  describe('.find') do
    it('returns an address by an id number') do
      test_address = Address.new({:street => '123 Test St.', :city => 'Portland', :state => "OR", :zipcode => "97236", :type => "Home"})
      test_address.save
      test_address2 = Address.new({:street => '123 Test St.', :city => 'Portland', :state => "OR", :zipcode => "97236", :type => "Home"})
      test_address2.save
      expect(Address.find(2)).to(eq(test_address2))
    end
  end
end
