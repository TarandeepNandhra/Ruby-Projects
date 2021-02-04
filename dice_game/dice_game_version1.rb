# We can use rand to, for example, write a simple dice game. 
#The rules are:

#If I roll higher than my opponent, I win.
#Let's agree now that the program returning false means 'I lose', and true means 'I win'.

#Write the dice game as above.

#p1 is self and p2 is opponent

def roll 
  return rand(1 .. 6)
end

while true do
  p1, p2 =  roll, roll
  if p1 > p2 
    return true
  else
    return false
  end
end
