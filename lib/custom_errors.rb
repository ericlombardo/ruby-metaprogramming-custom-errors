class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person           # assings instance.partner to person they married
    if person.class != Person       # checks if input is an instance of a person
      begin                         # starts error handling
        raise PartnerError          # if not an instance PartnerError is thrown 
      rescue PartnerError => error  # method is rescued and error is placeholder for error message
        puts error.message          # puts error.message (aka PartnerError.message)
      end
    else
      person.partner = self         # if person is an instance, assigns this instance to them as their partner
    end

  end
  
  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




