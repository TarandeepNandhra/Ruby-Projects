# Write a program that calculates the score for a word in Scrabble.
# It should:
# * Ask the user for a word e.g. `apple`.
# * `puts` the score for the word in Scrabble by totalling the points
#   for each letter in the word.
#   * Points for each letter:
#     * 0 points: blank tile
#     * 1 point: E, A, I, O, N, R, T, L, S, U
#     * 2 points: D, G
#     * 3 points: B, C, M, P
#     * 4 points: F, H, V, W, Y
#     * 5 points: K
#     * 8 points: J, X
#     * 10 points: Q, Z

# * Note: You can assume that the user will enter a word that only
#   contains letters and blanks.  You can assume the word will be in
#   uppercase.

points = { 'a' => 1, 'b' => 3, 'c' => 3, 'd' => 2, 'e' => 1, 'f' => 4,  
'g' => 2, 'h' => 4, 'i' => 1, 'j' => 8, 'k' => 5, 'l' => 1, 'm' => 3, 'n' => 1, 'o' => 1, 
'p' => 3, 'q' => 10, 'r' => 1, 's' => 1, 't' => 1, 'u' => 1, 'v' => 4, 'w' => 4, 'x' => 8, 
'y' => 4, 'z' => 10 }
 
puts "Input your word"
 
input = gets.chomp.delete(" ").split("")
 
sum = 0
 
input.each { |x| sum += points[x.downcase] }
 
puts sum 
 