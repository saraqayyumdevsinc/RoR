# frozen_string_literal: true

# rubocop : This command will check the code for style violations.
# rubocop -A : This command will automatically fix some of the problems reported by RuboCop.
=begin
This is a multi-line comment. These are not recommended
It can span multiple lines without any special syntax.
You can write any text or notes here.

Whitespace characters are ignored except in strings.
Semicolons and newline characters -> End of line
But +, -, *, /, %, **, !, !=, <, <=, >, >=, <=>, ==, ===, =~, []=, [] and << are not ignored and are treated as
continuation of the line
=end


puts 'Hello, Ruby!' # Runs second
puts "This is main Ruby Program" # Runs third

END {
   puts "Terminating Ruby Program" # Runs fourth
}
BEGIN {
   puts "Initializing Ruby Program" # Runs first
}

class Customer
  @@no_of_customers = 0

  def initialize
    @@no_of_customers += 1  # Increment the count of customers when a new instance is created
  end

  def self.total_customers
    @@no_of_customers  # Return the total number of customers
  end
end

# Creating instances of Customer
customer1 = Customer.new  # Create a new instance of Customer
customer2 = Customer.new  # Create another instance of Customer

puts Customer.total_customers # Output the total number of customers

# Define a class named Person
class Person
  attr_accessor :name, :age  # Create getters and setters for name and age attributes

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    puts "Hello, my name is #{@name} and I'm #{@age} years old."
  end
end

# Create an instance of Person
person = Person.new("John", 30)

# Access instance variables using getters and setters
puts "Name: #{person.name}"
puts "Age: #{person.age}"

# Call instance method
person.introduce

# Use conditionals
if person.age >= 18
  puts "I am an adult."
else
  puts "I am a minor."
end

# Create an array
numbers = [1, 2, 3, 4, 5]

# Iterate over array using each method
numbers.each do |number|
  puts number
end

# Use a loop
i = 0
while i < 5
  puts "Loop iteration: #{i}"
  i += 1
end

# Define a hash
person_info = { name: "Alice", age: 25, occupation: "Engineer" }

# Access hash values
puts "Name: #{person_info[:name]}"
puts "Age: #{person_info[:age]}"
puts "Occupation: #{person_info[:occupation]}"

# Use a case statement
grade = "B"

case grade
when "A"
  puts "Excellent!"
when "B"
  puts "Good!"
when "C"
  puts "Average."
else
  puts "Needs improvement."
end

# Define a method
def greet(name)
  puts "Hello, #{name}!"
end

# Call a method
greet("Sarah")

# Use string interpolation
number = 42
puts "The answer to life, the universe, and everything is #{number}."

# Use string concatenation
first_name = "John"
last_name = "Doe"
full_name = first_name + " " + last_name
puts "Full name: #{full_name}"

# Use array methods
fruits = ["apple", "banana", "orange"]

puts "First fruit: #{fruits.first}"
puts "Last fruit: #{fruits.last}"
puts "Fruit count: #{fruits.length}"
puts "Is 'banana' included? #{fruits.include?('banana')}"

# Use string methods
message = "Hello, World!"

puts "Uppercase: #{message.upcase}"
puts "Lowercase: #{message.downcase}"
puts "Reversed: #{message.reverse}"

# Use random number generation
random_number = rand(1..100)
puts "Random number: #{random_number}"

# Use file operations
File.open("example.txt", "w") do |file|
  file.write("This is an example.")
end

contents = File.read("example.txt")
puts "File contents: #{contents}"

# Use exception handling
begin
  1 / 0
rescue ZeroDivisionError => e
  puts "Error: #{e.message}"
end
