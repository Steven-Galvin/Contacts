require "contacts"
require "rspec"
require "pry"
require "address"
require "email"
require "phone"

  describe(Contact) do

    describe('#first_name') do
      it('returns the first name of a contact') do
        test_contact = Contact.new({:first_name => "Dana", :last_name => "Weiss", :job_title => "Software Developer", :company => "Epicodus"})
        expect(test_contact.first_name()).to(eq("Dana"))
      end
    end

    describe('#last_name') do
      it('returns the last name of a contact') do
        test_contact = Contact.new({:first_name => "Dana", :last_name => "Weiss", :job_title => "Software Developer", :company => "Epicodus"})
        expect(test_contact.last_name()).to(eq("Weiss"))
      end
    end

    describe('#job_title') do
      it('returns the job title of a contact') do
        test_contact = Contact.new({:first_name => "Dana", :last_name => "Weiss", :job_title => "Software Developer", :company => "Epicodus"})
        expect(test_contact.job_title()).to(eq("Software Developer"))
      end
    end

    describe('#company') do
      it('returns the company of a contact') do
        test_contact = Contact.new({:first_name => "Dana", :last_name => "Weiss", :job_title => "Software Developer", :company => "Epicodus"})
        expect(test_contact.company()).to(eq("Epicodus"))
      end
    end

    describe('#id') do
      it('returns the ID of a contact') do
        test_contact = Contact.new({:first_name => "Dana", :last_name => "Weiss", :job_title => "Software Developer", :company => "Epicodus"})
        expect(test_contact.id()).to(eq(1))
      end
    end

    describe('.all') do
      it('returns an empty arrray of contacts') do
        test_contact = Contact.new({:first_name => "Dana", :last_name => "Weiss", :job_title => "Software Developer", :company => "Epicodus"})
        expect(Contact.all()).to(eq([]))
      end
    end

    describe('#save') do
      it('adds a contact and all attributes to the contacts array') do
        test_contact = Contact.new({:first_name => "Dana", :last_name => "Weiss", :job_title => "Software Developer", :company => "Epicodus"})
        test_contact.save()
        expect(Contact.all()).to(eq([test_contact]))
      end
    end

    describe('.clear') do
      it('clears the contacts array') do
        test_contact = Contact.new({:first_name => "Dana", :last_name => "Weiss", :job_title => "Software Developer", :company => "Epicodus"})
        test_contact.save()
        Contact.clear()
        expect(Contact.all()).to(eq([]))
      end
    end

    describe('.find') do
      it('finds a contact') do
        test_contact = Contact.new({:first_name => "Dana", :last_name => "Weiss", :job_title => "Software Developer", :company => "Epicodus"})
        test_contact.save()
        test_contact2 = Contact.new({:first_name => "Steven", :last_name => "Galvin", :job_title => "Software Developer", :company => "Epicodus"})
        test_contact2.save()
        expect(Contact.find(1)).to(eq(test_contact))
      end
    end

    describe('#add_address') do
      it('adds an address to a contact') do
        test_contact = Contact.new({:first_name => "Dana", :last_name => "Weiss", :job_title => "Software Developer", :company => "Epicodus"})
        test_address = Address.new({:street => '123 Test St.', :city => 'Portland', :state => "OR", :zipcode => "97236", :type => "Home"})
        test_contact.add_address(test_address)
        expect(test_contact.contact_addresses()).to(eq([test_address]))
      end
    end
  end
