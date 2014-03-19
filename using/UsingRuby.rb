

# We can define a method, all by itself
def say_hello(name)
  "Hello, #{name.capitalize}"
end

puts say_hello 'kurt'

# In Ruby everything is an object, or can be gotten to as an object if necessary
m = self.method(:say_hello)
puts m.call 'Kurt'


# Arrays
a = [123, 'Hello', :Kurt]
puts a[0]
puts a[1]
puts a[2]
a[1] = nil
puts a


# Shortcut for creating an array of words:
a = %w{ this is an array of words }
puts a[3]

# Shorthand for appending to an array:
a << 'which'
a << 'keeps'
a << 'growing'
puts a

# Hashes
h = {
    good: 'Ruby',
    better: 'Smalltalk',
    best: 'Lisp'
}

puts h
puts h[:best]


# We can define modules, which act as function namespaces, and also work as mixins for classes
module Helpers
  def enlarge(str)
    enlarged = ''
    str.each_char do |c|
      enlarged << c << ' '
    end
    enlarged
  end
end

# And of course we can define our own classes
class Person include Helpers
  attr_accessor :name
  attr_accessor :age
end

p = Person.new
p.name = 'Kurt'
p.age = 42

puts p.enlarge 'Wubba'

if p.age > 60
  puts 'NOW you know something'
elsif p.age > 40
  puts "You're starting to learn..."
else
  puts 'You know very little'
end

# For readability, we can also append conditionals to the end of a statement
puts 'Kurt is middle-aged' if p.age > 40
