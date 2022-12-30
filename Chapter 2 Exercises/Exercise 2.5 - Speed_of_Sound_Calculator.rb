=begin
Write a method which calculates the speed of sound, v, in the air of a given temperature, T, in Farenheit according to the formula:
v = 1086 * sqrt((5T + 297) / 247)
Round the result to three decimal places
=end

def speed_of_sound(t)
    speed = 1086 * Math.sqrt((5 * t) / 247.0)
    return speed.round(3)
end

puts speed_of_sound(78.0)