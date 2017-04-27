require('email')
require('rspec')

describe Email do

  describe('#email_address') do
    it('returns the email address') do
      test_email = Email.new({:email_address => 'no@no.com', :type => 'Personal', :id => 1})
      expect(test_email.email_address()).to(eq('no@no.com'))
    end
  end

  describe('#type') do
    it('returns the type of email address') do
      test_email = Email.new({:email_address => 'no@no.com', :type => 'Personal', :id => 1})
      expect(test_email.type()).to(eq('Personal'))
    end
  end

  describe('#id') do
    it('returns id of an email address') do
      test_email = Email.new({:email_address => 'no@no.com', :type => 'Personal', :id => 1})
      expect(test_email.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('returns all phone numbers in the email array') do
    test_email = Email.new({:email_address => 'no@no.com', :type => 'Personal', :id => 1})
    expect(Email.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a new email to an array of emails') do
      test_email = Email.new({:email_address => 'no@no.com', :type => 'Personal', :id => 1})
      test_email.save
      expect(Email.all()).to(eq([test_email]))
    end
  end

  describe('.clear') do
    it('clears the emails array') do
      test_email = Email.new({:email_address => 'no@no.com', :type => 'Personal', :id => 1})
      test_email.save()
      expect(Email.clear()).to(eq([]))
    end
  end

  describe('.find') do
    it('finds an email by an ID') do
      test_email = Email.new({:email_address => 'no@no.com', :type => 'Personal', :id => 1})
      test_email.save()
      test_email2 = Email.new({:email_address => 'yes@yes.com', :type => 'Business', :id => 2})
      test_email2.save()
      expect(Email.find(2)).to(eq(test_email2))
    end
  end
end
