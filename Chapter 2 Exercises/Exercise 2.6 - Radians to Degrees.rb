=begin
Write a method which coverts radians to degrees according to the following equation:
deg = (180 * rad) / pi
where rad is [0, 2*pi)
=end

def rad_to_degrees(radians)
    if radians >= 0 && radians < 2 * Math::PI
        degrees = (180 * radians) / Math::PI
        return degrees
    else
        degrees = "Input is invalid due to range. Please enter a value from [0, 2*pi)"    
        return degrees
    end
    
end

p rad_to_degrees(Math::PI)
p rad_to_degrees(2*Math::PI)