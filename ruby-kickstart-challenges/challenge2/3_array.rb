# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    final = ""
    #self is a string the method will be invoked on
    for i in 0...self.length
      s = self.split("")
      if i % 2 == 0
        final += s[i]
      end
    end
    
    final
    
  end
end