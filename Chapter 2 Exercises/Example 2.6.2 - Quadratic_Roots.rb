# Prompt the user to enter a, b, and c
# Read in values
# Compute quadratic roots (positive and negative)
# If the inputs are invalid, return a message explaining why.

puts "Please enter the value of a: "
a = gets.chomp
a = a.to_i
puts "Please enter the value of b: "
b = gets.chomp
b = b.to_i
puts "Please enter the value of c: "
c = gets.chomp
c = c.to_i

if a == 0
    return "The given value of a = 0 is invalid since it would cause a division by zero."
elsif b**2 - 4 * a * c < 0
    return "The given values of a, b, and c are invalid since it results in complex roots."
else
    r1 = (-b + Math.sqrt(b**2 - 4*a*c)) / (2*a)
    r2 = (-b - Math.sqrt(b**2 - 4*a*c)) / (2*a)
    puts "The roots of the given quadratic equations are: "
    puts r1
    puts r2
end
