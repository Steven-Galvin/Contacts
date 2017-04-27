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
      end
    end

    describe('#company') do
      it('returns the company of a contact') do
        test_contact = Contact.new({:first_name => "Dana", :last_name => "Weiss", :job_title => "Software Developer", :company => "Epicodus"})
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
