#!/usr/bin/php
<?php
/*
9x9 multiplication table in PHP
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
*/
// ./mt9x9.php || php -f mt9x9.php

    for ($i = 1; $i <= 9; $i += 3) {
        for ($j = 1; $j <= 9; $j++) {
            foreach (array($i, $i+1, $i+2) as $k) {
                printf("%dx%d=%2d\t", $k, $j, $k*$j);
            }
            print("\n");
        }
        echo "\n";
    }
?>
