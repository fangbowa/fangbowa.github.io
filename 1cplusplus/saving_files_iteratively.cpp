#include <stdio.h>
#include <vector>
#include <iostream>
#include <iomanip>   // needed to use manipulators of precision, width with cout
#include <fstream>
#include <sstream>
#include <string>
#include <cmath>



using namespace std;




int main(int argc,char **args){



	double a[1000];


	for (int count=0; count<10; count++) {

        for (int j=0; j<1000; j++) a[j]=1.50*count;

        {   // this curly braket define a scope
                string name_1="a", name_2=".txt";
                char numstr[21]; // enough to hold all numbers up to 64-bits
                sprintf(numstr, "%d", count);
                string filename = name_1 + numstr + name_2;
                ofstream myfile (filename.c_str());

                for (int j=0; j<1000; j++){
                    myfile << j <<"   "<<std::setprecision(12)<< a[j] <<endl;
                }
                myfile.close();
        }

	}




}
