#!/usr/bin/dart
/*
9x9 multiplication table in Dart
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2024.
*/
// dart compile exe mt9x9.dart -o mt9x9 && ./mt9x9 ||
// dart mt9x9.dart || ./mt9x9.dart

import 'dart:io';
main() {
    for(int i = 1; i <= 9; i += 3) {
        for(int j = 1; j <=9; j++) {
            [i, i+1, i+2].forEach((k) =>
                stdout.write('${k}x${j}=${k*j<10?" ":""}${k*j}\t')
            );
            stdout.write('\n');
        }
        print('');
    }
}
