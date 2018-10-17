// 9x9 multiplication table in Swift
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
// swift mt9x9.swift || ( swiftc mt9x9.swift ; ./mt9x9 )

import Foundation
for i in [1, 4, 7] {
    for j in 1...9 {
        for k in i...i+2 {
            print(String(format:"%dx%d=%2d", k, j, k*j), terminator:"\t")
        }
        print()
    }
    print()
}
