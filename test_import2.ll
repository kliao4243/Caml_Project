; ModuleID = 'MicroC'
source_filename = "MicroC"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @puts(i8*, ...)

declare i8* @pitch_to_int(i8*, ...)

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

define i32 @main() {
entry:
  %test_chord = alloca { i8*, i32 }
  %struct.ptr = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %test_chord, i32 0, i32 1
  store i32 10, i32* %struct.ptr
  %struct.ptr1 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %test_chord, i32 0, i32 1
  %struct.val.c = load i32, i32* %struct.ptr1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i32 %struct.val.c)
  ret i32 0
}
