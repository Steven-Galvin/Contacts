class Phone
  attr_reader(:area, :number, :type, :id)
  @@phone_numbers = []

  define_method(:initialize) do |attributes|
    @area = attributes.fetch(:area)
    @number = attributes.fetch(:number)
    @type = attributes.fetch(:type)
    @id = @@phone_numbers.length().+(1)
  end
end
