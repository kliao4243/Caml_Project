; ModuleID = 'MicroC'
source_filename = "MicroC"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @puts(i8*, ...)

declare i32 @pitch_to_int(i8*, ...)

declare i32 @ran(i32, ...)

define i32 @main() {
entry:
  %Arr = alloca i32*
  %sorted = alloca i32*
  %i = alloca i32
  %ran = call i32 (i32, ...) @ran(i32 50)
  %ran1 = call i32 (i32, ...) @ran(i32 50)
  %ran2 = call i32 (i32, ...) @ran(i32 50)
  %ran3 = call i32 (i32, ...) @ran(i32 50)
  %ran4 = call i32 (i32, ...) @ran(i32 50)
  %ran5 = call i32 (i32, ...) @ran(i32 50)
  %ran6 = call i32 (i32, ...) @ran(i32 50)
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 7))
  %0 = bitcast i8* %malloccall to i32*
  %1 = getelementptr i32, i32* %0, i32 0
  store i32 %ran, i32* %1
  %2 = getelementptr i32, i32* %0, i32 1
  store i32 %ran1, i32* %2
  %3 = getelementptr i32, i32* %0, i32 2
  store i32 %ran2, i32* %3
  %4 = getelementptr i32, i32* %0, i32 3
  store i32 %ran3, i32* %4
  %5 = getelementptr i32, i32* %0, i32 4
  store i32 %ran4, i32* %5
  %6 = getelementptr i32, i32* %0, i32 5
  store i32 %ran5, i32* %6
  %7 = getelementptr i32, i32* %0, i32 6
  store i32 %ran6, i32* %7
  store i32* %0, i32** %Arr
  %Arr7 = load i32*, i32** %Arr
  %bubble_sort_result = call i32* @bubble_sort(i32* %Arr7, i32 7)
  store i32* %bubble_sort_result, i32** %sorted
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i11 = load i32, i32* %i
  %tmp12 = icmp slt i32 %i11, 7
  br i1 %tmp12, label %while_body, label %merge

while_body:                                       ; preds = %while
  %sorted8 = load i32*, i32** %sorted
  %i9 = load i32, i32* %i
  %8 = getelementptr i32, i32* %sorted8, i32 %i9
  %9 = load i32, i32* %8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %9)
  %i10 = load i32, i32* %i
  %tmp = add i32 %i10, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  ret i32 0
}

define i32* @bubble_sort(i32* %Arr, i32 %sz) {
entry:
  %Arr1 = alloca i32*
  store i32* %Arr, i32** %Arr1
  %sz2 = alloca i32
  store i32 %sz, i32* %sz2
  %i = alloca i32
  %j = alloca i32
  %temp = alloca i32
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %merge25, %entry
  %i28 = load i32, i32* %i
  %sz29 = load i32, i32* %sz2
  %tmp30 = icmp slt i32 %i28, %sz29
  br i1 %tmp30, label %while_body, label %merge31

while_body:                                       ; preds = %while
  %i3 = load i32, i32* %i
  %tmp = add i32 %i3, 1
  store i32 %tmp, i32* %j
  br label %while4

while4:                                           ; preds = %merge, %while_body
  %j22 = load i32, i32* %j
  %sz23 = load i32, i32* %sz2
  %tmp24 = icmp slt i32 %j22, %sz23
  br i1 %tmp24, label %while_body5, label %merge25

while_body5:                                      ; preds = %while4
  %Arr6 = load i32*, i32** %Arr1
  %i7 = load i32, i32* %i
  %0 = getelementptr i32, i32* %Arr6, i32 %i7
  %1 = load i32, i32* %0
  %Arr8 = load i32*, i32** %Arr1
  %j9 = load i32, i32* %j
  %2 = getelementptr i32, i32* %Arr8, i32 %j9
  %3 = load i32, i32* %2
  %tmp10 = icmp sgt i32 %1, %3
  br i1 %tmp10, label %then, label %else

merge:                                            ; preds = %else, %then
  %j20 = load i32, i32* %j
  %tmp21 = add i32 %j20, 1
  store i32 %tmp21, i32* %j
  br label %while4

then:                                             ; preds = %while_body5
  %Arr11 = load i32*, i32** %Arr1
  %i12 = load i32, i32* %i
  %4 = getelementptr i32, i32* %Arr11, i32 %i12
  %5 = load i32, i32* %4
  store i32 %5, i32* %temp
  %Arr13 = load i32*, i32** %Arr1
  %j14 = load i32, i32* %j
  %6 = getelementptr i32, i32* %Arr13, i32 %j14
  %7 = load i32, i32* %6
  %Arr15 = load i32*, i32** %Arr1
  %i16 = load i32, i32* %i
  %8 = getelementptr i32, i32* %Arr15, i32 %i16
  store i32 %7, i32* %8
  %temp17 = load i32, i32* %temp
  %Arr18 = load i32*, i32** %Arr1
  %j19 = load i32, i32* %j
  %9 = getelementptr i32, i32* %Arr18, i32 %j19
  store i32 %temp17, i32* %9
  br label %merge

else:                                             ; preds = %while_body5
  br label %merge

merge25:                                          ; preds = %while4
  %i26 = load i32, i32* %i
  %tmp27 = add i32 %i26, 1
  store i32 %tmp27, i32* %i
  br label %while

merge31:                                          ; preds = %while
  %Arr32 = load i32*, i32** %Arr1
  ret i32* %Arr32
}

declare noalias i8* @malloc(i32)
