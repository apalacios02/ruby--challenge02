# Author: Allan Palacios

class HelloWorld
    def self.hello(name = "World")
      "Hello, #{name}!"
    end
  end

puts HelloWorld.hello 
puts HelloWorld.hello('Alice') 