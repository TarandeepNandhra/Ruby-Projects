# We can use rand to, for example, write a simple dice game. 
#The rules are:

#If I roll higher than my opponent, I win.
#Let's agree now that the program returning false means 'I lose', and true means 'I win'.

#Write the dice game as above.
#Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
#Upgrade the game once more: now we play several rounds for each game. 
# =>The first player to win two rounds wins the game. (Still with two dice each.)

#Version 1 - One dice each

#p1 is self and p2 is opponent

# def roll 
#   return rand(1 .. 6)
# end

# while true do
#   p1, p2 =  roll, roll
#   if p1 > p2 
#     return true
#   else
#     return false
#   end
# end

#Version 2 - Two dice each then sum the dice scores to get total

#p1 is self and p2 is opponent

def roll 
  return rand(1 .. 6)
end

while true do
    p1 = roll + roll
    p2 = roll + roll
    if p1 > p2 
        return true
    else
        return false
    end
end

#Version 3 - First to win two rounds
# Either returns true twice or returns false twice.

def roll 
  return rand(1 .. 6)
end

true_count, false_count = 0, 0
#if either count reaches two, then game is over.

while (true_count < 2 && false_count < 2) do
    while true do
        p1 = roll + roll
        p2 = roll + roll
        if p1 > p2 
            true_count += 1
        else
            false_count += 1
        end
        break
    end
end

if true_count == 2 
    puts "Well done you won!"
else
    puts "Better luck next time, your opponent won"
end
    

