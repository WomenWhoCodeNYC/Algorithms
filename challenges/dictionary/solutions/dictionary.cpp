#include <iostream>
#include <string>
#include <set>

std::string GetSentence(std::set<std::string>& dictionary, std::string& words) {
  std::string check;
  std::string result;
  for (std::string::iterator it = words.begin(); it != words.end(); it++) {
    check += *it;
    if (dictionary.find(check)!=dictionary.end()) {
      result.append(check);
      result.append(" ");
      check = "";
    }
  }
  if (!result.empty())
    result.pop_back();
  return result;
}

int main()
{
  // example of dictionary
  std::set<std::string> dictionary = {"this", "is", "a", "fun", "problem"};
  std::string words;     
  std::cout<<"Please, provide a string"<<std::endl;
  std::cin>>words;
  std::string result = GetSentence(dictionary, words);
  std::cout<<result<<std::endl;
}
