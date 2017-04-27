class Email
  attr_reader(:email_address, :type, :id)

  @@emails = []

  define_method(:initialize) do |attributes|
    @email_address = attributes.fetch(:email_address)
    @type = attributes.fetch(:type)
    @id = @@emails.length().+(1)
  end

  define_singleton_method(:all) do
    @@emails
  end

  define_method(:save) do
    @@emails.push(self)
  end
end
