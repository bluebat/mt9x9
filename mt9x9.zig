// 9x9 multiplication table in Zig
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
// zig build-exe mt9x9.zig && ./mt9x9 || zig run mt9x9.zig

const std = @import("std");
pub fn main() !void {
    var i: u8 = 1;
    while (i <= 9) : (i += 3) {
        var j: u8 = 1;
        while (j <= 9) : (j += 1) {
            for ([_]u8{i, i+1, i+2}) |k| {
                std.debug.print("{d}x{d}={d: >2}\t", .{k, j, k*j});
            }
            std.debug.print("\n", .{});
        }
        std.debug.print("\n", .{});
    }
}
