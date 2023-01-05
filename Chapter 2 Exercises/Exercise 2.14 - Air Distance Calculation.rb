=begin
 Write a method which prompts a user for the latitude and longitude of two locations. Each number should be in the range of [-180,180].
 The method should calculate the air distance between these two points according to the Law of Cosines:
 d = arccos(sin(x1)sin(x3) + cos(x1)cos(x3)cos(r)) * 6371 , where d is distance, x1 is the latitude of the first location, x2 is the latitude of the second location, 
 and r is the difference between longitude of the second location and longitude of the first.
 The input should be converted from degree to radians according to the following:
 rad = deg * pi / 180
=end

def air_distance()
    puts "Enter the latitude of the starting location: "
    x1 = gets.chomp.to_f
    puts "Enter the longitude of the starting location: "
    x2 = gets.chomp.to_f
    puts "Enter the latitude of the ending location: "
    x3 = gets.chomp.to_f
    puts "Enter the longitude of the ending location: "
    x4 = gets.chomp.to_f

    x1rad = x1 * Math::PI / 180
    x2rad = x2 * Math::PI / 180
    x3rad = x3 * Math::PI / 180
    x4rad = x4 * Math::PI / 180

    r = x4rad - x2rad
    d = Math.acos(Math.sin(x1rad) * Math.sin(x3rad) + Math.cos(x1rad) * Math.cos(x3rad) * Math.cos(r)) * 6371

    return d
end

puts air_distance