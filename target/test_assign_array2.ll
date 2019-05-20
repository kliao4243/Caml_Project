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
  %i = alloca i32
  %int_array = alloca i32*
  %dup = alloca i32*
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
  store i32* %0, i32** %int_array
  %malloccall1 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 5))
  %5 = bitcast i8* %malloccall1 to i32*
  %int_array2 = load i32*, i32** %int_array
  %6 = getelementptr i32, i32* %int_array2, i32 0
  %temp = load i32, i32* %6
  %7 = getelementptr i32, i32* %5, i32 0
  store i32 %temp, i32* %7
  %int_array3 = load i32*, i32** %int_array
  %8 = getelementptr i32, i32* %int_array3, i32 1
  %temp4 = load i32, i32* %8
  %9 = getelementptr i32, i32* %5, i32 1
  store i32 %temp4, i32* %9
  %int_array5 = load i32*, i32** %int_array
  %10 = getelementptr i32, i32* %int_array5, i32 2
  %temp6 = load i32, i32* %10
  %11 = getelementptr i32, i32* %5, i32 2
  store i32 %temp6, i32* %11
  %int_array7 = load i32*, i32** %int_array
  %12 = getelementptr i32, i32* %int_array7, i32 3
  %temp8 = load i32, i32* %12
  %13 = getelementptr i32, i32* %5, i32 3
  store i32 %temp8, i32* %13
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %14 = bitcast i8* %malloccall9 to i32*
  %15 = getelementptr i32, i32* %14, i32 0
  store i32 1, i32* %15
  %16 = getelementptr i32, i32* %14, i32 0
  %temp10 = load i32, i32* %16
  %17 = getelementptr i32, i32* %5, i32 4
  store i32 %temp10, i32* %17
  store i32* %5, i32** %dup
  %dup11 = load i32*, i32** %dup
  %18 = getelementptr i32, i32* %dup11, i32 2
  store i32 20, i32* %18
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i15 = load i32, i32* %i
  %tmp16 = icmp slt i32 %i15, 5
  br i1 %tmp16, label %while_body, label %merge

while_body:                                       ; preds = %while
  %dup12 = load i32*, i32** %dup
  %i13 = load i32, i32* %i
  %19 = getelementptr i32, i32* %dup12, i32 %i13
  %20 = load i32, i32* %19
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %20)
  %i14 = load i32, i32* %i
  %tmp = add i32 %i14, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  store i32 0, i32* %i
  br label %while17

while17:                                          ; preds = %while_body18, %merge
  %i24 = load i32, i32* %i
  %tmp25 = icmp slt i32 %i24, 4
  br i1 %tmp25, label %while_body18, label %merge26

while_body18:                                     ; preds = %while17
  %int_array19 = load i32*, i32** %int_array
  %i20 = load i32, i32* %i
  %21 = getelementptr i32, i32* %int_array19, i32 %i20
  %22 = load i32, i32* %21
  %printf21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %22)
  %i22 = load i32, i32* %i
  %tmp23 = add i32 %i22, 1
  store i32 %tmp23, i32* %i
  br label %while17

merge26:                                          ; preds = %while17
  ret i32 0
}

declare noalias i8* @malloc(i32)
