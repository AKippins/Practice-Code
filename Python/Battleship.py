from random import randint

board = []

for x in range(0, 5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

        
print_board(board)
print("\n")

def random_row(board):
    return randint(0, len(board) - 1)

def random_col(board):
    return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)


for turn in range(0,14):
    print "Turn Number: " + str(turn + 1)
    guess_row = input("Guess Row:") - 1
    guess_col = input("Guess Col:") - 1
    if ship_row == guess_row and ship_col == guess_col:
        print "Congratulations! You sank my battleship!" + "\n"
        exit()
    elif guess_row > 4 or guess_col > 4:
        print "Oops, that's not even in the ocean." + "\n"
    elif board[int(guess_row)][int(guess_col)] == "X":
        print "You guessed that one already." + "\n"
    else:
        board[int(guess_row)][int(guess_col)] = "X"
        print_board(board)
        print "You missed my battleship!" + "\n" 
    if turn == 13:
        print "Game Over, You Were Blown To Smitherienes!!!"
        
