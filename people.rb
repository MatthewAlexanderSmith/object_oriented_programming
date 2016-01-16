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

class Test
end


#Question 6
chris = Instructor.new("Chris")
chris.greeting

#Question 7
christina = Student.new("Christina")
christina.greeting

#Question 8
#This works because:
#Class Instructor inherits from Class Name
#Therefore calling the new method on Class Instructor
#Effectively initializes the instance variable @name
#And instantiates a new class object
#giving access to all features of both
#the Name and Instructor classes for chris
#and the Name and Student classes for christina
chris.teach
christina.learn
