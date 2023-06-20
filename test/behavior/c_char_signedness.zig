const std = @import("std");
const expectEqual = std.testing.expectEqual;
const c = @cImport({
    @cInclude("limits.h");
});

test "c_char signedness" {
    try expectEqual(@as(c_char, c.CHAR_MIN), std.math.minInt(c_char));
    try expectEqual(@as(c_char, c.CHAR_MAX), std.math.maxInt(c_char));
}
