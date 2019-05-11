; ModuleID = 'MicroC'
source_filename = "MicroC"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @printbig(i32)

declare i8* @puts(i8*, ...)

declare i8* @printp(i8*, ...)

define i32 @main() {
entry:
  %arr = alloca i32*
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 4))
  %0 = bitcast i8* %malloccall to i32*
  %1 = getelementptr i32, i32* %0, i32 0
  store i32 1, i32* %1
  %2 = getelementptr i32, i32* %0, i32 1
  store i32 2, i32* %2
  %3 = getelementptr i32, i32* %0, i32 2
  store i32 3, i32* %3
  %4 = getelementptr i32, i32* %0, i32 3
  store i32 4, i32* %4
  store i32* %0, i32** %arr
  %arr1 = load i32*, i32** %arr
  %5 = getelementptr i32, i32* %arr1, i32 2
  %6 = load i32, i32* %5
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %6)
  ret i32 0
}

declare noalias i8* @malloc(i32)
