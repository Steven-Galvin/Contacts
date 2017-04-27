class Address
  attr_reader(:street, :city, :state, :zipcode)



  define_method(:initialize) do |attributes |
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zipcode = attributes.fetch(:zipcode)
  end
end
