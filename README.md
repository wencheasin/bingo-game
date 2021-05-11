# bingo-game
I build a ruby script to improve the speed of checking numbers and to win company's bingo game
Lan, please help me reduce the redundancy and clumsiness of my code - bingo mapper.rb.
Especially, the board set up process has a lot of repetition.

Here are the Game rules:
- Before start, game host gave each player a 5x5 bingo board with
- different numbers. For example, a player starts with a board of 25 numbers:
- B  I  N  G  O
- 13 26 38 53 73
- 15 23 42 51 71
- 10 19 X  47 64
- 4  21 41 58 74
- 7  16 31 57 69
- And the host asks for a unique Pattern of letter "X" as a H-shaped pattern:
- B  I  N  G  O
- X  O  O  O  X
- X  X  X  X  X
- X  X  X  X  X
- X  O  O  O  X
- X  O  O  O  X
  
- When game starts, the host publishes a series of random numbers,
- such as "B2" "B4" "I22" "I23" ...
- The the player need to quickly check his numbers and find if some of them match the published numbers.
- If there is a match, the play can replace that matched number (ex. "B2") with a
- "X". Once there are enough "X" to show the "H"-shaped Bingo Pattern, the player wins.