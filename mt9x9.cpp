/*
9x9 multiplication table in C++
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
*/
// g++ mt9x9.cpp -o mt9x9 && ./mt9x9

#include <iostream>
using namespace std;
int main() {
    for(int i = 1; i <= 9; i += 3) {
        for(int j = 1; j <= 9; j++) {
            for(int k : {i, i+1, i+2})
                printf("%dx%d=%2d\t", k, j, k*j);
            printf("\n");
        }
        cout << endl;
    }
}
