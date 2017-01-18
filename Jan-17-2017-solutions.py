# Author is github id: ddk376
# Contributors : Python group in the January 17, 2017 meetup 
# Version: Python 3.5.2

def evenOddLetters(s, unique = False ):
    """Takes a string and checks the number of letter in a word are even or odd.
      If unique is set to True, it checks the number of unique letters in a word are even or odd"""
   
    if unique: s = set(s)
    if len(s) % 2 == 0:
        print("Even")
    else:
        print("Odd")

# defeats maps the key to the verb and what the hands the key defeats
defeats = {"Rock"     : [("crushes", "Lizard"), ("crushes", "Scissors")],
           "Paper"    : [("covers", "Rock"), ("disproves", "Spock")],
           "Scissors" : [("cuts", "Paper"), ("decapitates", "Lizard")],
           "Spock"    : [("smashes", "Scissors"),("vaporizes", "Rock")],
           "Lizard"   : [("poisons", "Spock"), ("eats", "Paper")] }

def rocksPaperScissors(player1, player2, advanced = False ):
    """Original Rocks, Paper, Scissors game
       If advanced = True, Rocks, Paper, Scissors, Spock, Lizard game"""
    
    valid_plays = None
    if advanced: valid_plays = ["Rock", "Paper", "Scissors", "Spock", "Lizard"]
    else:        valid_plays = ["Rock", "Paper", "Scissors"]

    if player1 not in valid_plays or player2 not in valid_plays:
        print ("One or both players did not provide a valid_hand")
        return
   
    if player1 == player2:  print ("Tie")
    else:
        d = list(map(lambda x: x[1], defeats[player1]))
        if player2 in d:
            verb = defeats[player1][d.index(player2)][0]
            print( player1 + " " + verb + " " + player2)
            print("Player 1 wins")
        else:
            d = list(map(lambda x: x[1], defeats[player2]))
            verb = defeats[player2][d.index(player1)][0]
            print (player2 + " " +  verb + " " + player1 )
            print ("Player 2 wins")

def initalizeTowerStacks(num_of_disks, start_col):
    tower_stacks = [[],[],[]]
    for i in reversed(range(1, num_of_disks+1)):
        tower_stacks[start_col-1].append(i)

    return tower_stacks

def towersOfHanoi(num_of_disks, start_col, end_col, temp_col):
    """ Solves towers of Hanoi: larger the disk number signifies a larger disk, ie disk 4 < disk 5
        Columns are labeled as follows
          ||  ||  ||
          ||  ||  ||
        ==============
          1    2   3       
    """

    tower_stacks = initalizeTowerStacks(num_of_disks, start_col)
    solveTowersOfHanoi(num_of_disks, start_col, end_col, temp_col, tower_stacks)

def solveTowersOfHanoi(num_of_disks, start_col, end_col, temp_col, tower_stacks):
    if num_of_disks == 1: moveDisk(1, start_col, end_col , tower_stacks)
    else:
        solveTowersOfHanoi(num_of_disks - 1, start_col, temp_col, end_col, tower_stacks)    # move the N-1 disks out of the way to the temp column
        moveDisk(num_of_disks, start_col, end_col, tower_stacks)                                          # after all the smaller disks are out of the way, move the biggest disk to the end_col
        solveTowersOfHanoi(num_of_disks - 1, temp_col, end_col, start_col, tower_stacks)                  # now move the N-1 disks to the end_col from the temp_col 


def moveDisk(disk_num, from_col, to_col, tower_stacks):
    print ("Move disk " + str(disk_num) + " from column " + str(from_col) + " to column " + str(to_col))
    disk = tower_stacks[from_col-1].pop()
    tower_stacks[to_col-1].append(disk)
    print(tower_stacks)

def triangleInequality(side1, side2, side3):
    """Given lengths of the sides of a triangle, determine where a valid triangle is formed"""

    if side1 + side2 < side3 or side2 + side3 < side1 or side3 + side1 < side2:
        print( "Not a valid Triangle")
    else:
        print( "Valid Triangle")

def sumOfDigits(n):
    sum = 0
    while n > 0:
        sum += n % 10
        n = n // 10
    return sum

def isDivisible(n):
    """ Returns true if n is divisible by 2, 3, and 5 """
    if n % 2 == 0 or sumOfDigits(n) % 3 == 0 or n % 10 == 5: return True
    else: return False

primes = []

def digitsArePrime(n):
    while n > 0:
        if n % 10 not in primes:
	        return False
        n = n // 10
    return True

def isPrime(n):
    for i in range(2, n//2 + 1):
        if n % i == 0:
	        return False
    return True

def primesBase10(max_limit):
    for i in range(2, 10):
        if isPrime(i): primes.append(i)
    for i in range(10, max_limit):
        if not isDivisible(i) and isPrime(i) and digitsArePrime(i):
            primes.append(i)
    print(primes) 

if __name__ == "__main__":
    print("Testing evenOddLetters............................")
    evenOddLetters("llama")
    evenOddLetters("Hello world", unique = True)
   
    print("\nTesting rocksPaperScissors........................")
    rocksPaperScissors("Rock", "Rock")
    rocksPaperScissors("Rock", "Scissors")
    rocksPaperScissors("Scissors", "Paper")
    print("")
    rocksPaperScissors("Scissors", "Paper", advanced = True)
    rocksPaperScissors("Paper", "Rock", advanced = True)
    rocksPaperScissors("Rock", "Lizard", advanced = True)
    rocksPaperScissors("Lizard", "Spock", advanced = True)
    rocksPaperScissors("Spock", "Scissors", advanced = True)
    rocksPaperScissors("Scissors", "Lizard", advanced = True)
    rocksPaperScissors("Lizard", "Paper", advanced = True)
    rocksPaperScissors("Paper", "Spock", advanced = True)
    rocksPaperScissors("Spock", "Rock", advanced = True)
    rocksPaperScissors("Rock", "Scissors", advanced = True)
      
    print("\nTesting towersOfHanoi............................")
    print("3 disks")
    towersOfHanoi(3, 1, 3, 2)
    print("4 disks")
    towersOfHanoi(4, 1, 3, 2)
    print("5 disks")
    towersOfHanoi(5, 1, 3, 2)

    print("\nTesting triangleInequality........................")
    triangleInequality(3,4,5)
    triangleInequality(3,4,8)

    print("\nTesting primesBase10..............................")
    primesBase10(10000)
