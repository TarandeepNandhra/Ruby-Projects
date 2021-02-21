# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
    final = ""
    if return_odds # odd indexed
        for i in 0...string.length
            if i % 2 == 1
                final += string[i]
            end
        end
    else
        # false
        for i in 0...string.length
            if i % 2 == 0
                final += string[i]
            end
        end
    end
    
    final
    
end
