; ModuleID = 'MicroC'
source_filename = "MicroC"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @puts(i8*, ...)

declare i8* @pitch_to_int(i8*, ...)

define i32 @main() {
entry:
  %a = alloca i32
  %b = alloca i32
  %c = alloca i32
  store i32 1, i32* %b
  store i32 1, i32* %a
  %b1 = load i32, i32* %b
  %a2 = load i32, i32* %a
  %add_result = call i32 @add(i32 %a2, i32 %b1)
  store i32 %add_result, i32* %c
  %c3 = load i32, i32* %c
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %c3)
  %c4 = load i32, i32* %c
  ret i32 %c4
}

define i32 @add(i32 %a, i32 %b) {
entry:
  %a1 = alloca i32
  store i32 %a, i32* %a1
  %b2 = alloca i32
  store i32 %b, i32* %b2
  %c = alloca i32
  %a3 = load i32, i32* %a1
  %b4 = load i32, i32* %b2
  %tmp = add i32 %a3, %b4
  store i32 %tmp, i32* %c
  %c5 = load i32, i32* %c
  ret i32 %c5
}
