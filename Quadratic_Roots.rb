# Prompt the user to enter a, b, and c
# Read in values
# Compute quadratic roots (positive and negative)

puts "Please enter the value of a: "
a = gets.chomp
puts "Please enter the value of b: "
b = gets.chomp
puts "Please enter the value of c: "
c = gets.chomp
a = a.to_i
b = b.to_i
c = c.to_i
r1 = (-b + Math.sqrt(b**2 - 4*a*c)) / (2*a)
r2 = (-b - Math.sqrt(b**2 - 4*a*c)) / (2*a)
puts "The roots of the given quadratic equations are: "
puts r1
puts r2
