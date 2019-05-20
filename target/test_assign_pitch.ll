; ModuleID = 'CAML'
source_filename = "CAML"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"4#" = private unnamed_addr constant [4 x i8] c"2b4\00", align 1
@"4#.2" = private unnamed_addr constant [4 x i8] c"3^7\00", align 1
@"4#.3" = private unnamed_addr constant [4 x i8] c"4#5\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @puts(i8*, ...)

declare i32 @pitch_to_int(i8*, ...)

declare i32 @ran(i32, ...)

declare i32 @up_8(i8*, ...)

declare i32 @down_8(i8*, ...)

define i32 @main() {
entry:
  %a = alloca i8*
  %b = alloca i8*
  %c = alloca i8*
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#", i32 0, i32 0), i8** %a
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.2", i32 0, i32 0), i8** %b
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.3", i32 0, i32 0), i8** %c
  %a1 = load i8*, i8** %a
  %prints = call i32 (i8*, ...) @puts(i8* %a1)
  %b2 = load i8*, i8** %b
  %prints3 = call i32 (i8*, ...) @puts(i8* %b2)
  %c4 = load i8*, i8** %c
  %prints5 = call i32 (i8*, ...) @puts(i8* %c4)
  ret i32 0
}
