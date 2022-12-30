=begin
Write a method which calculates the amount of power in Watts given the current in Amps and resistance in Ohms:
W = A^2 * O
=end

def watts_calc(amps, ohms)
    watts = amps**2 * ohms
    return watts
end

p watts_calc(0.833, 144)