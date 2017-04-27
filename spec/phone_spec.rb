require('phone')
require('rspec')
require('pry')

describe Phone do

  describe('#area') do
    it('returns area code of phone number') do
      test_phone = Phone.new({:area => "503", :number => "555-5035"})
      expect(test_phone.area()).to(eq("503"))
    end
  end

  describe('#number') do
    it('returns number of phone number') do
      test_phone = Phone.new({:area => "503", :number => "555-5035"})
      expect(test_phone.number()).to(eq("555-5035"))
    end
  end

end
