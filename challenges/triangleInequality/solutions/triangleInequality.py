# Author is github id: ddk376
# Contributors : Python group in the January 17, 2017 meetup 
# Version: Python 3.5.2

def triangleInequality(side1, side2, side3):
    """Given lengths of the sides of a triangle, determine where a valid triangle is formed"""

    if side1 + side2 < side3 or side2 + side3 < side1 or side3 + side1 < side2:
        print( "Not a valid Triangle")
    else:
        print( "Valid Triangle")


if __name__ == "__main__":
    print("\nTesting triangleInequality........................")
    triangleInequality(3,4,5)
    triangleInequality(3,4,8)
