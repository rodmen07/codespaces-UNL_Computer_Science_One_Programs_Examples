=begin
Create a method which takes the radius from the user and outputs the surface area and volume according to the following equations:
Area = 4 * pi * r ^ 2
Volume = 4/3 * pi * r ^ 3
The method should take into account invalid inputs for r (i.e. zero or negative values) and output an error message.
=end

def sphere_area_and_volume ()
    printf "Enter radius r: "
    radius = gets.chomp.to_f
    if radius <= 0 
        return "The given radius is invalid, please retry with a positive value of r."
    else
        surface_area = 4 * Math::PI * radius ** 2
        volume = Math::PI * (radius ** 3) * 4 / 3
        return "area: " + surface_area.round(2).to_s + "\n" + "volume: " + volume.round(2).to_s
    end

end
 
puts sphere_area_and_volume