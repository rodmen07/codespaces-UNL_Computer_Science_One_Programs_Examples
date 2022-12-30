# Read in a Farenheit value from the user
# Compute a Celsius value using the formula given
# Output the result to the user

puts "Please enter the temperature in Farenheit: "
farenheit = gets.chomp
farenheit = farenheit.to_f
celsius = 5.0 / 9.0 * (farenheit - 32.0)
farenheit = farenheit.to_s
celsius = celsius.round(2).to_s
puts farenheit + " degrees Farenheit is " + celsius + " degrees Celsius!"