class Person
  def initialize(attributes)
    attributes.each do |key, value|
      # create a getter and setter by calling the attr_accessor method
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

susan = Person.new(susan_attributes)
susan.name      # => "Susan"
susan.height    # => "5'11""
susan.eye_color # => "Green"
