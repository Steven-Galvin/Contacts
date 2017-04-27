class Address
  attr_reader(:street, :city)



  define_method(:initialize) do |attributes |
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
  end
end
