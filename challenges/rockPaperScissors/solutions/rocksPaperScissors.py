# Author is github id: ddk376
# Contributors : Python group in the January 17, 2017 meetup 
# Version: Python 3.5.2

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



if __name__ == "__main__":
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