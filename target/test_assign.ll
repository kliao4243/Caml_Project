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
  %int_array1 = load i32*, i32** %int_array
  store i32* %int_array1, i32** %dup
  %dup2 = load i32*, i32** %dup
  %5 = getelementptr i32, i32* %dup2, i32 2
  store i32 20, i32* %5
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i6 = load i32, i32* %i
  %tmp7 = icmp slt i32 %i6, 4
  br i1 %tmp7, label %while_body, label %merge

while_body:                                       ; preds = %while
  %dup3 = load i32*, i32** %dup
  %i4 = load i32, i32* %i
  %6 = getelementptr i32, i32* %dup3, i32 %i4
  %7 = load i32, i32* %6
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %7)
  %i5 = load i32, i32* %i
  %tmp = add i32 %i5, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  store i32 0, i32* %i
  br label %while8

while8:                                           ; preds = %while_body9, %merge
  %i15 = load i32, i32* %i
  %tmp16 = icmp slt i32 %i15, 4
  br i1 %tmp16, label %while_body9, label %merge17

while_body9:                                      ; preds = %while8
  %int_array10 = load i32*, i32** %int_array
  %i11 = load i32, i32* %i
  %8 = getelementptr i32, i32* %int_array10, i32 %i11
  %9 = load i32, i32* %8
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %9)
  %i13 = load i32, i32* %i
  %tmp14 = add i32 %i13, 1
  store i32 %tmp14, i32* %i
  br label %while8

merge17:                                          ; preds = %while8
  ret i32 0
}

declare noalias i8* @malloc(i32)
