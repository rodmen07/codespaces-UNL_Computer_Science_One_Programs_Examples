=begin
Write a method which computes the real cost of driving by prompting the user for the beginning
odometer reading, ending odometer reading, number of gallons to fill the tank, and the cost of
gas per gallon. The method should output the miles driven, miles per gallon, and cost per mile.
=end

def cost_of_driving ()
    printf "Enter the beginning odometer reading: "
    odometer_beginning = gets.chomp.to_f
    printf "Enter the ending odometer reading: "
    odometer_ending = gets.chomp.to_f
    printf "Enter the number of gallons to fill tank : "
    gallons_of_gas = gets.chomp.to_f
    printf "Enter the cost of gas per gallon: $"
    cost_of_gas = gets.chomp.to_f
    miles_driven = odometer_ending - odometer_beginning
    miles_per_gallon = miles_driven / gallons_of_gas
    cost_per_mile = cost_of_gas * gallons_of_gas / miles_driven
    p "Miles driven: " + miles_driven.round(2).to_s
    p "Miles per gallon: " + miles_per_gallon.round(2).to_s
    return "Cost per mile: $" + cost_per_mile.round(2).to_s + "\n"
end

printf cost_of_driving