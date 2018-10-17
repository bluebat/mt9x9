// 9x9 multiplication table in C++
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
// g++ mt9x9.cpp -o mt9x9 ; ./mt9x9

#include <iostream>
using namespace std;
int main() {
    int i, j, k;
    for(i = 1; i <= 9; i += 3) {
        for(j = 1; j <= 9; j++) {
            for(k = i; k < i+3; k++)
                printf("%dx%d=%2d\t", k, j, k*j);
            cout << endl;
        }
        cout << endl;
    }
}
