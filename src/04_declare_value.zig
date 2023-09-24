// การประกาศตัวแปรในระดับ top-level การประกาศก่อนหลัง, ใช้ก่อนประกาศที่หลังจะไม่มีผล
// zig เป็น compiler ที่ไล่อ่าน source code ทั้งหมดแล้ว compile เป็น binary
const print = std.debug.print;
const std = @import("std");
const os = std.os;
const assert = std.debug.assert;

// ยกตัวอย่างข้างบน จะสังเกตุเห็นว่า การประกาศลำดับก่อนหลังของการประกาศตัวแปรไม่มีผลเลย
// ตัวแปร print มีการใช้ std ซึ่งประกาศทีหลังด้วยซ้ำ
// แต่ภา่ยใน function เราไม่สามารถทำแบบนี้ได้นะ ลำดับยังมีความสำคัญ

pub fn main() !void {
  const x = 30;
  const y = x + 10;
  print("const x = 30;\n", .{});
  print("const y = x + 10;\n", .{});
  print("ผลลัพธ์คือ {d}.\n", .{ y });

  print("------------------\n", .{});

  // integers
  const one_plus_one: i32 = 1 + 1;
  print("1 + 1 = {}\n", .{one_plus_one});

  // floats
  const seven_div_three: f32 = 7.0 / 3.0;
  print("7.0 / 3.0 = {}\n", .{seven_div_three});

  // boolean
  print("{}\n{}\n{}\n", .{
      true and false,
      true or false,
      !true,
  });

  const optional_value = null;
  print("type = {!}, value = {!}\n", .{ @TypeOf(optional_value), optional_value });
}