#!/usr/bin/env scriptisto
/// brew install scriptisto
/// https://github.com/igor-petruk/scriptisto
/// run with scriptisto

// scriptisto-begin
// script_src: script.zig
// build_cmd: zig build-exe script.zig
// scriptisto-end

const std = @import("std");

pub fn main() !void {
  std.debug.print("Hello {s}.\n", .{ "world" });
}