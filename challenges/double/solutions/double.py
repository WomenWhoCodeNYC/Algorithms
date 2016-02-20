### Here i only checked if the number is integer.
### for the case of checking other numeric types:
### isinstance(number, (int, float, long,...)

def double(number):
    if isinstance(number, int):
        return number*2
    else:
        print ("Not a number!")
#print double(19)
#print double("fr")

## submitted by [jungjung917](https://github.com/jungjung917)
