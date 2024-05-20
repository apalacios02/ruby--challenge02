# Author: Allan Palacios

class HelloWorld
    def initialize(name)
      @name = name
    end
  
    def hello(guest_name = "World")
      "Hello, #{guest_name}. My name is #{@name}!"
    end
  end

  wally = HelloWorld.new('Wally')
puts wally.hello 
puts wally.hello('Alice') 