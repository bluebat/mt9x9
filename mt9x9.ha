// 9x9 multiplication table in Hare
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2024.
// hare build mt9x9.ha && ./mt9x9 || hare run mt9x9.ha

use fmt;
export fn main() void = {
    for (let i = 1z; i <= 9; i += 3) {
        for (let j = 1z; j <= 9; j += 1) {
            for (let k = i; k <= i+2; k += 1) {
	        fmt::printf("{}x{}={:2}\t", k, j, k*j)!;
            };
            fmt::print("\n")!;
        };
        fmt::println()!;
    };
};
