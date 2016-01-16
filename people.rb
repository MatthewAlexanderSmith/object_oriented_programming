class Name
  def initialize (name)
    @name = name
  end

  def greeting
    puts "Hi My name is #{@name}"
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

#Question 6
chris = Instructor.new("Chris")
chris.greeting

#Question 7
christina = Student.new("Christina")
christina.greeting
