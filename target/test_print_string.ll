; ModuleID = 'CAML'
source_filename = "CAML"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"123" = private unnamed_addr constant [11 x i8] c"helloworld\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @puts(i8*, ...)

declare i32 @pitch_to_int(i8*, ...)

declare i32 @ran(i32, ...)

declare i32 @up_8(i8*, ...)

declare i32 @down_8(i8*, ...)

define i32 @main() {
entry:
  %prints = call i32 (i8*, ...) @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"123", i32 0, i32 0))
  ret i32 0
}
