=begin
Create a method which prompts the user to enter the cost and gain from an investment and computes the ROI.
ROI is given by Gain from Investment - Cost of Investment / Cost of Investment   
=end

def roi_calculator()
    printf "Cost of Investment: $"
    cost_of_invesment = gets.chomp.to_f
    printf "Gain from Investment: $"
    gain_from_investment = gets.chomp.to_f
    return_on_investment = (gain_from_investment - cost_of_invesment) * 100 / cost_of_invesment
    return "Return on Investment: " + return_on_investment.round(2).to_s + "%"
end

p roi_calculator