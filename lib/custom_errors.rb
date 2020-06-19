class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    person.partner = self
    if person.class != person
      raise PartnerError
    else
      person.partner = self
    end
  end

  class PartnerError < StandardError
    def message
      "you must give the get_married method an argumetn of an instance of the person class!"
    end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
