class Email
  attr_reader(:email_address, :type)

  define_method(:initialize) do |attributes|
    @email_address = attributes.fetch(:email_address)
    @type = attributes.fetch(:type)
  end
end
