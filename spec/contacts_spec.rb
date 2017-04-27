require "contacts"
require "rspec"
require "pry"

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
  end





# describe(Vehicle) do
#
#   before() do
#     Vehicle.clear()
#   end
#
#   describe('#age') do
#     it('returns the vehicle age') do
#       test_vehicle = Vehicle.new({:make=>"Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
#       expect(test_vehicle.age()).to(eq(17))
#     end
#   end
