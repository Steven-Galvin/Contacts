require('phone')
require('rspec')
require('pry')

describe Phone do

  describe('#area') do
    it('returns area code of phone number') do
      test_phone = Phone.new({:area => "503", :number => "555-5035", :type => "Home", :id => 1})
      expect(test_phone.area()).to(eq("503"))
    end
  end

  describe('#number') do
    it('returns number of phone number') do
      test_phone = Phone.new({:area => "503", :number => "555-5035", :type => "Home", :id => 1})
      expect(test_phone.number()).to(eq("555-5035"))
    end
  end

  describe('#type') do
    it('returns type of phone number') do
      test_phone = Phone.new({:area => "503", :number => "555-5035", :type => "Home", :id => 1})
      expect(test_phone.type()).to(eq("Home"))
    end
  end

  describe('#id') do
    it('returns the id of a phone number') do
      test_phone = Phone.new({:area => "503", :number => "555-5035", :type => "Home", :id => 1})
      expect(test_phone.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('returns an empty array') do
      test_phone = Phone.new({:area => "503", :number => "555-5035", :type => "Home", :id => 1})
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a phone number and all attributes to the phone numbers array') do
      test_phone = Phone.new({:area => "503", :number => "555-5035", :type => "Home", :id => 1})
      test_phone.save()
      expect(Phone.all()).to(eq([test_phone]))
    end
  end

  describe('.clear') do
    it('clears the phone numbers array') do
      test_phone = Phone.new({:area => "503", :number => "555-5035", :type => "Home", :id => 1})
      test_phone.save()
      expect(Phone.clear()).to(eq([]))
    end
  end

end
