/*
9x9 multiplication table in Swift
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
*/
// swiftc mt9x9.swift && ./mt9x9 || swift mt9x9.swift

import Foundation
for i in stride(from:1, to:9, by:3) {
    for j in 1...9 {
        for k in [i, i+1, i+2] {
            print(String(format:"%dx%d=%2d", k, j, k*j), terminator:"\t")
        }
        print()
    }
    print()
}
