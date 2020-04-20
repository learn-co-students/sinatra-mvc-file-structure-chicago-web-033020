class Dog
  attr_accessor :name, :breed, :age
  @@all = []
  def initialize(name, breed, age=nil)
    @name = name
    @breed = breed
    if age
      @age =age
    end
    self.class.all << self
  end

  def self.all
    @@all
  end
end