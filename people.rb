class Name
  def initialize (name)
    @name = name
  end
end

class Student < Name
  def learn
    puts "I get it!"
  end
end

class Instructor < Name
  def teach
    puts "Everything in Ruby is an object"
  end
end
