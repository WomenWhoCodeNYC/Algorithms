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

if __name__ == "__main__":
    print("Testing evenOddLetters............................")
    evenOddLetters("llama")
    evenOddLetters("Hello world", unique = True)