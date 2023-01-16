=begin
Create a method which prompts a user for an x and delta x value, and outputs the first derivative of the following:
x^2, sin(x), and ln(x)
according to the approximation f'(x) = f (x + delta x) - f(x) / delta x 
=end

def derivative_approximation()
    p "Please provide a value for x: "
    x = gets.chomp.to_f
    p "Please provide a value for delta x: "
    delta_x = gets.chomp.to_f
    x_squared = ((x + delta_x) ** 2 - x**2) / delta_x
    sin_of_x = (Math.sin(x + delta_x) - Math.sin(x)) / delta_x
    ln_of_x = (Math.log(x + delta_x, Math::E) - Math.log(x, Math::E)) / delta_x
    p "(x^2)' = " + x_squared.round(6).to_s
    p "sin'(x) = " + sin_of_x.round(6).to_s
    p "ln'(x) = " + ln_of_x.round(6).to_s
    return
end

puts derivative_approximation()