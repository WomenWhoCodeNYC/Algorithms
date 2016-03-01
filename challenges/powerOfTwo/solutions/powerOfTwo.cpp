//From wikipedia: https://en.wikipedia.org/wiki/Bit_manipulation

// The obvious method
unsigned int x = ...;
bool isPowerOfTwo;
if (x > 0) {
    while ((x % 2) == 0) {
        x = x / 2;
    }
    isPowerOfTwo = (x==1);
}
else
    isPowerOfTwo = false;

// A method using bit manipulation
bool isPowerOfTwo = x && !(x & (x - 1));

////////////////////////////////////////////////////////////
//  Aksana Kuzmitskaya
//  aksana.kuzmitskaya@gmail.com
///////////////////////////////////////////////////////////
