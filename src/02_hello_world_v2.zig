const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
  print("Hello {s}.\n", .{ "world" });

  // with padding: 20 spaces
  print("Hello {s:20}.\n", .{ "world" });
}