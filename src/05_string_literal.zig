const std = @import("std");
const mem = std.mem;
const print = std.debug.print;

// String literals are constant single-item Pointers to null-terminated byte arrays.
// String literals เป็นค่า constant มี pointer ชี้และมี byte ปิดท้ายเป้น null

pub fn main() !void {
  const bytes = "hello";
  print("{}\n", .{ @TypeOf(bytes) });
  print("{d}\n", .{ bytes.len });
  print("{c}\n", .{ bytes[1] });
  print("{d}\n", .{ bytes[5] }); // รหัสปิดท้าย string แสดงเป็นตัวเลขได้เลย 0
  print("{c}\n", .{ bytes[5] }); // รหัสปิดท้าย string เป็น ค่า แสดงเป็น character จึงไม่เห็นการแสดงผล
  print("{}\n", .{ 'e' == '\x65' }); // รหัสปิดท้าย string เป็น ค่า แสดงเป็น character จึงไม่เห็นการแสดงผล
  print("{d}\n", .{'\x65'});
  print("{d}\n", .{'💯'});

  print("{}\n", .{mem.eql(u8, "hello", "h\x65llo")});      // true
  print("{}\n", .{mem.eql(u8, "💯", "\xf0\x9f\x92\xaf")}); // also true   

  const invalid_utf8 = "\xff\xfe";      // non-UTF-8 strings are possible with \xNN notation.
  print("0x{x}\n", .{invalid_utf8[1]}); // indexing them returns individual bytes...
  print("0x{x}\n", .{"💯"[1]});    // ...as does indexing part-way through non-ASCII characters 

  // multi line string  
  const hello_world_in_c =
    \\#include <stdio.h>
    \\
    \\int main(int argc, char **argv) {
    \\    printf("hello world\n");
    \\    return 0;
    \\}
  ;
 
 print("{s}\n", .{hello_world_in_c});
}