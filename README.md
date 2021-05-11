# bingo-game
I build a ruby script to improve the speed of checking numbers and to win company's bingo game.
L, Yang, please help me reduce the redundancy and clumsiness of my code - bingo mapper.rb.
Especially, the board set up process has a lot of repetition.

Here are the Game rules:
Before start, game host gave each player a 5x5 bingo board with
different numbers. For example, a player can get a board:
B  I  N  G  O
13 26 38 53 73
15 23 42 51 71
10 19 X  47 64
4  21 41 58 74
7  16 31 57 69
The host sets 1 unique Pattern as Bingo:
B  I  N  G  O
X  O  O  O  X
X  X  X  X  X
X  X  X  X  X
X  O  O  O  X
X  O  O  O  X
When game starts, the host announces a random sequence of numbers
such as "B2" "B4" "I22" "I23" ...
The the player check his numbers with the announces numbers.
If there is a match, he can replace that number with a "X". 
Once there are enough "X" to show the Bingo Pattern, the player wins.