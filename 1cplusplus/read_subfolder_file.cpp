#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main () {


  string line;
  ifstream myfile ("./subdir/example.txt");     // this is the most important line
  if (myfile.is_open())
  {
    while ( getline (myfile,line) )
    {
      cout << line << '\n';
    }
    myfile.close();
  }
  else {
	cout << "Unable to open file"; 
  }


  return 0;
}
