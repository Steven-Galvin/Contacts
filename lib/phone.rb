class Phone
  attr_reader(:area, :number)

  define_method(:initialize) do |attributes|
    @area = attributes.fetch(:area)
    @number = attributes.fetch(:number)
  end
end
