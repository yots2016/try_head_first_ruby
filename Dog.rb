class Animal

  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can`t be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn`t valid!"
    end
    @age = value
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}"
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

class Dog < Animal

  def to_s
    puts "#{@name} the animal, age #{@age}"
  end

end

class Bird < Animal

  def talk
    puts "#{@name} says Chirp! Chirp!"
  end

end

class Cat < Animal

  def talk
    puts "#{@name} says Meow!"
  end

end

class Armadillo < Animal

  def move(destination)
    puts "#{@name} unrolls!"
    super
  end
end

dog = Dog.new
dog.move("house")
dog.name = "dsfsd"
dog.age = 3
dog.report_age
dog.talk
dog.move("house")

armadillo = Armadillo.new
armadillo.move("tree")

dog2 = Dog.new
dog2.name = "Slavik"
dog2.age = 3
dog2.report_age
dog2.talk
dog2.move("club")
puts dog2.to_s
