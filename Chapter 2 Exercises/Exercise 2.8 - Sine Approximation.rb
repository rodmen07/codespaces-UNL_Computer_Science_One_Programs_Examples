=begin
Write a method which calculates sine according to the first four terms of a Taylor Series approximation.
Then calculate the absolute difference between that and the standard implementation of sine.
The first four terms in the Taylor Series approximation are:
sin(x) = x - x^3/3! + x^5/5! - x^7/7! 
=end

def sin_approximation(x)
    sin_of_x = x - x**3/factorial_calc(3) + x**5/factorial_calc(5) - x**7/factorial_calc(7)
    absolute_diff = (sin_of_x - Math.sin(x)).abs
    p "Approximation: " + sin_of_x.to_s
    p "Standard implementation: " + Math.sin(x).to_s
    return "Absolute difference: " + absolute_diff.to_s
end

def factorial_calc(num)
    factorial = 1
    (1..num).each { |i| factorial *= i }
    return factorial
end

p sin_approximation(1.15)