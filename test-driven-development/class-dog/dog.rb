class Dog

  #class variables
  @@total_number_of_dogs = 0

  #attributes with read and write permissions
  attr_accessor :name, :age

  # attr_reader :name, :age
  # attr_writer :name, :age

  #attributes
  # @name
  # @age

  def initialize(init_name, init_age)
    @name = init_name
    @age = init_age
    @@total_number_of_dogs += 1
  end

  def self.get_total_number_of_dogs
    @@total_number_of_dogs
  end

  #behaviours
  def bark
    puts "WOOF WOOF"
  end
  
  def howl
    puts "AWOOH"
  end
  
  def fetch_ball
    if @age < 6
      puts "#{@name} will run excitedly to ge the ball"
    else
      puts "#{@name} will slowly walk towards the ball"
    end
  end
  
  #read permissions for @name
  # def get_name
  #   @name
  # end

  #write permissions for @name
  # def set_name=(name_we_give)
  #   @name = name_we_give
  # end
end
