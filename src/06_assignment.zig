const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
  var y: i19 = 5678;
  y += 1;

  print("{d}\n", .{y});

  // การ assign ตัวแปร เมื่อประกาศตัวแปร (decalre) จำเป็ยต้อง initial ค่าเลย, ไม่อนุญาตให้ประกาศตัวแปรแล้ว assign ค่าทีหลัง
  // มิฉะนั้นจะเจอ error: variables must be initialized
  // ลองทดสอบจากตัวอย่างด้านล่าง

  // var x: i32;
  // x = 12;

  // หากอยากแค่ declare ตัวแปรไว้ก่อน แล้วค่อย initial ค่า ให้ใช้ undefined
  // แต่เนื่องด้วยการใช้ undefined สามารถ coerce ไปเป็น any type, อาจจะนำไปสู่ทำให้เกิด bug ในโปรแกรมได้
  // การใช้ undefined จึงควรใช้ในกรณีที่ต้องการค่าที่ยังไม่ได้มีความหมายมากนัก และ การนำไปใช้งานในความเป็นจริงควรจะอยู่ใน 2 กรณีนี้
  // 1. ต้องการประกาศจงใจ unused ตัวแปรนั้นจริงๆ
  // 2. เมื่อต้องการไปใช้งานต่อ ควร assign ค่าก่อนเสมอ

  var age: u7 = undefined; // เลือกใช้ type u7 เนื่องจากอายุมีความเป็นไปได้ที่จะเหมาะกับ u7 ที่สุดคือรับค่า max: 127
  var height: u9 = undefined; // ลองกำหนด type เป็น u9
  const t = undefined;
  _ = t;
 
  // สังเกตุว่าเรา inital undefined หลังจาก declare ตัวแปร zig compiler ไม่ได้มองเป็น unused error แต่ต้องประกาศเป้น const
  age = 65;
  height = 178;
  print("คุณมีอายุ {d} ปี, ส่วนสูง {d} เซนติเมตร.\n", .{ age, height });
}