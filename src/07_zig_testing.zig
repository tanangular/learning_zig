const std = @import("std");
const expect = std.testing.expect;
// Ref: https://ziglang.org/documentation/master/#Zig-Test
// run: zig test src/07_zig_testing.zig   
// zig มี test built in (test เป็น keyword สังเกตุว่าเราเขียน test ได้เลย ไม่ต้อง import function test เข้ามาเพิ่มเติมใดใด)

// Test Declarations
// test เป็น keyword ตามด้วย optional ที่เป็น identifier (ตามตัวอย่าง คือ addOne เอาชื่อ function มาเป็นชื่อ test) หรือ
// เป็น string literal "expect addOne adds one to 41"
// เนื่องจากเป็น optional เราจึง test {} แบบนี้ก็ได้

test {
  try expect( true == true );
}

test "expect addOne adds one to 41" {
  try expect(addOne(41) == 42);
}

test addOne {
  try expect(addOne(0) == 1);
}

test "addOne2" {
  try expect(addOne(-1) == 0);
}

fn addOne(number: i32) i32 {
    return number + 1;
}

