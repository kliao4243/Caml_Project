; ModuleID = 'CAML'
source_filename = "CAML"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @puts(i8*, ...)

declare i32 @pitch_to_int(i8*, ...)

declare i32 @ran(i32, ...)

declare i32 @up_8(i8*, ...)

declare i32 @down_8(i8*, ...)

define i32 @main() {
entry:
  %b = alloca i32
  %a = alloca i32
  store i32 1, i32* %a
  store i32 2, i32* %b
  %a1 = load i32, i32* %a
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %a1)
  %b2 = load i32, i32* %b
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %b2)
  ret i32 0
}
