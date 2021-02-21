#Can upgrade by including a commentary for each round of the game.

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
    
