const std = @import("std");
const print = std.debug.print;

// Zig มี comment อยู่ 3 รูปแบบคือ
// 1. normal comment คือ ใช้ double slash //
// 2. document comment ใช้ /// (tripple slash)
//    multiple doc comment ในแต่ละบรรทัด จะ merge กันเป็น multiple line comment ตอน generate document
//    มีข้อจำกัด มันต้องอยู่ในที่ที่ควรอยู่ จะ error หาก document comment ไปแทรกอยู่กลาง expression
//    หรือ /// end of fine (บรรทัดหลัง main function)
// 3. top-level document ใช้ //! (two slash and an exclamation point) ซึ่งต้องวางไว้ top level จริงๆ
//    อยู่ใน block, ใน function ก็จะ error, ต้องวางไว้ก่อน expression ใดใด ปกติเราต้องไว้ที่หัวไฟล์ source code เลย
//

pub fn main() !void {

  // Normal comments are ignored, but doc comments and top-level doc comments are used
  // by the compiler to generate the package documentation.
}