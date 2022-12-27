=begin 
Create a method which reads in the purchase price and sales price, calculates the difference, 
 the appreciation rate, and the annualized appreciation rate
 d = s - p
 r = d / p
(1 + r) ^ (1/y) - 1
=end

def appreciation_calculator(purchase, sales, years)
    difference = sales - purchase
    rate = difference.to_f / purchase.to_f
    annual_rate = ((1 + rate) ** (1.0 / years)) - 1
    rate = rate * 100
    annual_rate = annual_rate * 100
    rate = rate.round(2).to_s
    annual_rate = annual_rate.round(2).to_s
    difference = difference.to_s
    purchase = purchase.to_s
    sales = sales.to_s
    years = years.to_s
    puts "With a purchase price of $" + purchase + ", a sales price of $" + sales + " over " + years + " years,\n the total gain is $" + difference + " at a rate of " + rate + "%, and an annualized rate of " + annual_rate + "%."
end

puts appreciation_calculator(10000, 15000, 1)
puts appreciation_calculator(400000, 550000, 10)
