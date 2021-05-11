# Game start
# Host announces random numbers:
s = "
B2, B4, B6, B7, B10, B11, B13, I22, I23, I30, N34, N35, N45
G47, G51, G52, O63, O66, O67, O68, O70, O72, O75
B3, B5, B9
I17, I25
N32, N40
G49, G58
O62, O69, O71
"

# break the number string into array of numbers:
names = s.split(/[,\s*\n]/)

# build a 2D array to simulate a player's board:
board = Array.new(5) {Array.new(5)}
5.times do |c|
  board[0][c] = "B"
  board[1][c] = "I"
  board[2][c] = "N"
  board[3][c] = "G"
  board[4][c] = "O"
end

board[0][0] += "13"
board[0][1] += "15"
board[0][2] += "10"
board[0][3] += "4"
board[0][4] += "7"

board[1][0] += "26"
board[1][1] += "23"
board[1][2] += "19"
board[1][3] += "21"
board[1][4] += "16"

board[2][0] += "38"
board[2][1] += "42"
board[2][2] += "19"
board[2][3] += "41"
board[2][4] += "31"

board[3][0] += "53"
board[3][1] += "51"
board[3][2] += "47"
board[3][3] += "58"
board[3][4] += "57"

board[4][0] += "73"
board[4][1] += "71"
board[4][2] += "64"
board[4][3] += "74"
board[4][4] += "69"
puts "\n"

# Do the match check and output the pattern
5.times do |row|
  5.times do |c|
    word = board[c][row]
    if (names.index(word) == nil)
      print "O"
      print "\t"
    else
      print "x"
      print "\t"
    end
  end
  puts ""
end
