=begin
The magic number can be computed using the following formula:
G + 1 - Wa - Lb
where G is the number of games played in the season, Wa is the number of wins the leader ucrrently has and Lb is the number of losses the
2nd place team currently has.

Write a program which prompts the user to enter:
- G, the total number of games in the season
- Wa, the number of wins of the leading team
- La, the number of losses of the leading team
- Wb the number of wins of the second place team
- Lb, the number of losses of the second place team
The program should then output the current win percentages of both team, the magic number of the leading team (these in a table format)
as well as the percentage of the remaining games that must go in team A's favor to satisfy the magic number.
=end

def the_magic_number()
    printf "Enter the total number of games in the season: "
    games = gets.chomp.to_f
    printf "Enter the number of wins of the leading team: "
    wins_a = gets.chomp.to_f
    printf "Enter the number of losses of the leading team: "
    losses_a = gets.chomp.to_f
    printf "Enter the number of wins of the second place team: "
    wins_b = gets.chomp.to_f
    printf "Enter the number of losses of the second place team: "
    losses_b = gets.chomp.to_f
    games_remaining_a = games - (wins_a + losses_a)
    games_remaining_b = games - (wins_b + losses_b)
    games_remaining = games_remaining_a + games_remaining_b
    percent_a = wins_a * 100 / (wins_a + losses_a)
    percent_b = wins_b * 100 / (wins_b + losses_b)
    magic_number = games + 1 - wins_a - losses_b
    magic_number_percent = ( magic_number / games_remaining ) * 100

    printf "Team    Wins    Loss    Percent    Magic Number\n"
    puts "A       " + wins_a.to_s + "    " + losses_a.to_s + "    " + percent_a.round(2).to_s + " %    " + magic_number.to_s 
    puts "B       " + wins_b.to_s + "    " + losses_b.to_s + "    " + percent_b.round(2).to_s + " %"
    puts "With " + games_remaining.to_i.to_s + " total games remaining, " + magic_number_percent.round(2).to_s + "% must go in team A's favor"
    return
end

puts the_magic_number