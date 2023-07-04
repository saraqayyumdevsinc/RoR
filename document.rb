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

