=begin
Write a program which prompts the user for the latitude/longitude of two locations (an origin and a destination) and
computes the directional bearing (in degrees) from the origin to the destination.

The bearing can be calculated with:
theta = atan2(sin(delta)*cos(phi2), cos(phi1)*sin(phi2) - sin(phi1) * cos(phi2)cos(delta)), where 
phi1 is the latitude of location A
phi2 is the latitude of location B
delta is the difference between location B's longitude and location A's longitude, and 
atan2 is the two-argument arctangent function.

Note: the formula above assumes that latitude and longitude are measured in radians r, -pi < r < pi.
To convert from degrees d, -180 < d < 180 to radians r, you can use the simple formula:
r = d * pi / 180
=end

def bearing_calculator()
    # Prompt the user to enter longitude/latitude of location A and B. Inputs are assumed to be -180 < x < 180.
    printf "Enter latitude of location A: "
    latitude_a = gets.chomp.to_f
    printf "Enter longitude of location A: "
    longitude_a = gets.chomp.to_f
    printf "Enter latitude of location B: "
    latitude_b = gets.chomp.to_f
    printf "Enter longitude of location B: "
    longitude_b = gets.chomp.to_f 

    # Convert each input into radians
    latitude_a_radians = latitude_a * Math::PI / 180
    longitude_a_radians = longitude_a * Math::PI / 180
    latitude_b_radians = latitude_b * Math::PI / 180 
    longitude_b_radians = longitude_b * Math::PI / 180  

    # Calculate delta, each argument of arctan2, and the bearing (theta).
    # y argument = sin(delta)*cos(phi2)
    # x argument = cos(phi1)*sin(phi2) - sin(phi1) * cos(phi2)cos(delta), where 
    # phi1 is the latitude of location A
    # phi2 is the latitude of location B, and
    # delta is the difference between location B's longitude and location A's longitude
    delta = longitude_b_radians - longitude_a_radians
    y_argument = Math.sin(delta) * Math.cos(latitude_b_radians)
    x_argument = Math.cos(latitude_a_radians) * Math.sin(latitude_b_radians) - Math.sin(latitude_a_radians) * Math.cos(latitude_b_radians) * Math.cos(delta)
    theta = Math.atan2(y_argument,x_argument)
    bearing = (theta * 180 / Math::PI + 360) % 360
    
    # Output original input and results.
    p "From (" + longitude_a.to_s+ ", " + latitude_a.to_s  + ") to (" + longitude_b.to_s + ", "  + latitude_b.to_s + ")"
    return "Bearing: " + bearing.to_s + " degrees"
end

 p bearing_calculator()
 #Enter 40.8206,-96.7056, 41.9483, and -87.6556, answer should be 77.594671 degrees