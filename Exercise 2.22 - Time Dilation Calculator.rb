=begin
Write a program that prompts the user for a velocity which represents the percentage
p of the speed of light (that is, p = v/c) and a time duration t in hours and outputs the
relative time duration on Earth.
Time dilation is calculated using the Lorentz equation:
t' = t / sqrt(1-v^2/c^2) where t is the time duration on the mass moving relatively faster,
and t' is the time duration on the relatively slower mass.
=end

def time_dilation_calculator()
    printf "Enter the time elapsed on the spaceship in hours: "
    time1 = gets.chomp.to_f
    printf "Enter the velocity of the space ship as a percentage of the speed of light: "
    velocity = gets.chomp.to_f
    time2 = time1 / (Math.sqrt(1 - velocity**2))
    puts "Traveling for " + time1.to_s + " hour(s) in you space ship at " + (velocity * 100).round(2).to_s + "% of the speed of light,"
    puts "your friends on Earth would experience: "
    return time_converter(time2)
end

def time_converter(time)
    time_hours = time.to_i
    time_min_sec = time -  time_hours
    years = time_hours / 8760
    weeks = (time_hours - years*8760) / 168
    days = (time_hours - years*8760 - weeks*168) / 24
    hours = time_hours - years*8760 - weeks*168 - days*24
    minutes  = (time - time_hours) * 60
    return years.round(2).to_s + " year(s)\n" + weeks.round(2).to_s + " weeks\n" + days.round(2).to_s + " day(s)\n" + hours.round(2).to_s + " hour(s)\n" + minutes.round(2).to_s + " minute(s)"
end

printf time_dilation_calculator

# Answer for user input of 168 hours and 0.9999 is shown as 17 hours, but calculations and results show 23 hours. Rest is correct.
