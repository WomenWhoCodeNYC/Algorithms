/************************************
	aksana.kuzmitskaya@gmail.com
************************************/

#include <string>
#include <iostream>
#include <algorithm>
#include <vector>

std::string intToString( int number ) {
	std::string answer;
	size_t advance = 0;
	if ( number < 0 ) {
		advance = 1;
		number *= -1;
		answer.push_back('-');
	}
	if (number == 0)
		return "0";
	while ( number != 0 ) {
		answer.push_back( '0' + number % 10 );
		number /= 10;
	}
	std::reverse( answer.begin() + advance, answer.end() );
	return answer;
}

int stringToInt( const std::string& str ) {
	int answer = 0;
	size_t lengthCount = str.length();
	bool isNegative = false;
	for ( auto c : str ) {
		if ( c == '0' )
			return 0;
		if ( c == '-' )
			isNegative = true;
		else {
			answer += c - '0';
			if ( lengthCount > 1 ) 
				answer *= 10;
		}
		--lengthCount;
	}
	if ( isNegative )
	    answer *= -1;
	return answer;
}

int main() {
	// test
	std::vector< int > numbersToTest { 0, -129, 5679, 2 };
	size_t index = 1;
	for ( auto n : numbersToTest ) {
		std::cout << "Test number " << index << " --> " <<
		std::boolalpha << ( intToString(n) == std::to_string(n) ) << std::endl;
		++index;
	}
    std::vector< std::string > strsToTest { "0", "-129", "5679", "2" };
    index = 1;
	for ( auto n : strsToTest ) {
		std::cout << "Test string " << index << " --> " <<
		std::boolalpha << ( stringToInt(n) == std::stoi(n) ) << std::endl;
		++index;
	}
}
