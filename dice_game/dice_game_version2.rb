#Version 2 - Two dice each then sum the dice scores to get total

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
