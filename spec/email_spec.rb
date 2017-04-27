require('email')
require('rspec')

describe Email do

  describe('#email_address') do
    it('returns the email address') do
      test_email = Email.new({:email_address => 'no@no.com', :type => 'Personal'})
      expect(test_email.email_address()).to(eq('no@no.com'))
    end
  end

  describe('#type') do
    it('returns the type of email address') do
      test_email = Email.new({:email_address => 'no@no.com', :type => 'Personal'})
      expect(test_email.type()).to(eq('Personal'))
    end
  end
end
