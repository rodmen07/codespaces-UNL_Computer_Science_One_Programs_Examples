=begin
APY = e ^ i - 1, where i is the nominal interest rate in decimal
Write a method which reads in i and retruns the APY.
=end

def APY_Calculator(i)
    apy =  (Math.exp(i) - 1) * 100 
    apy = apy.round(2)
    msg = apy.to_s + "%"
    return msg
end

puts APY_Calculator(0.06)