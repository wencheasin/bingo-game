# Game start
# Host announces random numbers:
anouncedNum = "
N0,
B2, B4, B6, B7, B10, B11, B13, I22, I23, I30, N34, N35, N45
G47, G51, G52, O63, O66, O67, O68, O70, O72, O75
B3, B5, B9
I17, I25
N32, N40
G49, G58
O62, O69, O71
B8 I21, I24 N41 N42 G55 G60 O73
B1 B15 I16 I19 I29 N33 N36 N38 G50 G56 G59 O61 O74
"

# break the number string into array of numbers:
anouncedNumArray = anouncedNum.split(/[,\s*\n]/)

# build a 2D array to simulate a player's board:
board = Array.new(5) {Array.new(5)}
# numbers on player's board:
numOnMyBoard =
  "13,15,10,4,7,
# 26,23,19,21,16,
# 38,42,0,41,31,
# 53,51,47,58,57,
# 73,71,64,74,69"
#put board numbers into 5x5 board cells
numOnBoardRaw = numOnMyBoard.split(/[,#\s]/)
numOnBoard = numOnBoardRaw.reject { |n| n.length.zero?}
bingoLetter = %w[B I N G O]
5.times do |column|
  5.times do |row|
    board[row][column] = bingoLetter [column] + numOnBoard[column*5 + row]
  end
end

# Do the match check and output the pattern
5.times do |row|
  5.times do |column|
    word = board[row][column]
    if (anouncedNumArray.index(word) == nil)
      print "O"
      print "\t"
    else
      print "x"
      print "\t"
    end
  end
  puts ""
end
