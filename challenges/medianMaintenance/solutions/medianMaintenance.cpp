/************************************
    aksana.kuzmitskaya@gmail.com
************************************/

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
 
#define MAX_SIZE 10000
 
class Heap {
protected :
    std::vector< int > v ;
    virtual bool comp ( int i , int j ) = 0 ;
    void bubble_up  ( int i ) ;
    void bubble_down( int i ) ;
    int left    ( int i ) { return 2 * i + 1 ; }
    int right   ( int i ) { return 2 * i + 2 ; }
    int parent  ( int i ) { return ( i - 1 ) / 2 ; }
public:
    Heap( ) { v.reserve( MAX_SIZE / 2 + 1 ) ; }
    void insert( int val ) ;
    int size( ) { return v.size() ; }
    int top( )  { return v[0] ; }
    void pop( ) ;
} ;
 
void Heap::bubble_up( int i ) {
    if ( i == 0 )
        return ;
    int par = parent( i ) ;
    if ( comp( v[i] , v[par] ) ) {
        std::swap( v[par] , v[i] ) ;
        bubble_up( par ) ;
    }
}
 
void Heap::bubble_down( int i ) {
    if ( i >= int( v.size() ) - 1 )
            return ;
    int l = left( i ) ;
    int r = right( i ) ;
    int max ;
    if ( r >= int ( v.size() ) ) {
        if ( l >=  int ( v.size() ) )
            return ;
        max = l ;
    } else {
        if ( comp( v[l] , v[r] ) )
            max = l ;
        if ( comp( v[r] , v[l] ) )
            max = r ;
    }
    if ( comp( v[max] , v[i] ) ) {
        std::swap( v[i] , v[max] ) ;
        bubble_down( max ) ;
    }
}
 
void Heap::pop( ) {
    std::swap( v[0] , v.back() ) ;
    v.pop_back() ;
    bubble_down ( 0 ) ;
}
void Heap::insert( int val ) {
    v.push_back( val ) ;
    bubble_up( v.size() - 1 ) ;
}
 
class MaxHeap : public Heap {
    bool comp( int i , int j ) { return i > j ; }
} ;
 
class MinHeap : public Heap {
    bool comp( int i , int j ) { return i < j ; }
} ;
 
void medianHelper ( int num , int& median , MaxHeap & maxH , MinHeap & minH ) {
    if ( maxH.size() == minH.size() ) {
        if ( num < median ) {
            maxH.insert( num ) ;
            median = maxH.top() ;
        } else {
            minH.insert( num ) ;
            median = minH.top() ;
        }
    }
    else {
        if (  maxH.size() > minH.size() ) {
            if ( num < median ) {
                minH.insert( maxH.top() ) ;
                maxH.pop() ;
                maxH.insert( num ) ;
            } else {
                minH.insert( num ) ;
            }
        } else {
            if ( num < median ) {
                maxH.insert( num ) ;
            } else {
                maxH.insert( minH.top() ) ;
                minH.pop() ;
                minH.insert( num ) ;
            }   
        }
        median = maxH.top() ;
    }
}
 
int main() {
    std::ifstream f( "Median.txt" ) ;
    if ( !f.is_open() ) {
        std::cout << "Could not open the file." << std::endl ;
        return 1 ;
    }
    int num ;
    int i = 0 ;
    int median  = 0 ;
    int answer = 0 ;
    MaxHeap maxH ;
    MinHeap minH ;
    while( i < MAX_SIZE ) {
        f >> num ;
        medianHelper( num , median , maxH , minH ) ;
        answer += median ;
        ++i ;
    }
    f.close() ;
    std::cout << "Answer: " << answer % 10000 << std::endl ;
}