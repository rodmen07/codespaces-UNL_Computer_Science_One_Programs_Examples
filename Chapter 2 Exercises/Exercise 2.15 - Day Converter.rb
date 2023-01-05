=begin
Write a method which prompts the user for a number of days and converts into the equivalent number of years, weeks, and days.
=end

def day_converter
    printf("Enter number of days: ")
    input_days = gets.chomp.to_i
    years = input_days / 365
    weeks = (input_days - (years * 365)) / 7
    days = input_days - (years * 365) - (weeks * 7)
    return years.to_s + " years\n" + weeks.to_s + " weeks\n" + days.to_s + " days\n"
end

puts day_converter
