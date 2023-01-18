=begin
Write a program which prompts the user for the amount in m (mass, in kilograms) of an isotope and its half-life H as well
as a number of years y and outputs the amount of the isotope remaining after y years.
Given the mass m of an isotope, with half-life H we can determine how much of the isotope remains after y years using the formula,
r = m * (1/2)^(y/H)
=end

def radioactive_isotopes()
    printf "Enter the mass (in kilograms): "
    mass = gets.chomp.to_f
    printf "Enter the half-life of the isotope (in years): "
    half_life = gets.chomp.to_f
    printf "Enter the number of years elapsed: "
    years = gets.chomp.to_f
    remaining = mass * (0.5) ** (years / half_life)
    printf "Starting with " + mass.to_s + "kg of an isotope with a half-life " +  half_life.to_s + " years, after " + years.to_s + " years you would have " + remaining.round(4).to_s + " kilograms left."
    return ""
end

puts radioactive_isotopes