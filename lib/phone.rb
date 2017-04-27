class Phone
  attr_reader(:area, :number, :type, :id)
  @@phone_numbers = []

  define_method(:initialize) do |attributes|
    @area = attributes.fetch(:area)
    @number = attributes.fetch(:number)
    @type = attributes.fetch(:type)
    @id = @@phone_numbers.length().+(1)
  end

  define_singleton_method(:all) do
    @@phone_numbers
  end

  define_method(:save) do
    @@phone_numbers.push(self)
  end

  define_singleton_method(:clear) do
    @@phone_numbers = []
  end

  define_singleton_method(:find) do |id|
    matched_number = nil
    @@phone_numbers.each() do |number|
      if number.id() == id
        matched_number = number
      end
    end
    matched_number
  end
end
