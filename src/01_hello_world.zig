const std = @import("std");

pub fn main() !void {
  std.debug.print("Hello {s}.\n", .{ "world" });

  // with padding: 20 spaces
  std.debug.print("Hello {s:20}.\n", .{ "world" });
}