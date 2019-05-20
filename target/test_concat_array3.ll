; ModuleID = 'CAML'
source_filename = "CAML"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"123" = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@"123.2" = private unnamed_addr constant [6 x i8] c"world\00", align 1
@"123.3" = private unnamed_addr constant [5 x i8] c"love\00", align 1
@"123.4" = private unnamed_addr constant [6 x i8] c"aloha\00", align 1

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
  %str_array = alloca i8**
  %double_int = alloca i32*
  %double_str = alloca i8**
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 3))
  %0 = bitcast i8* %malloccall to i32*
  %1 = getelementptr i32, i32* %0, i32 0
  store i32 1, i32* %1
  %2 = getelementptr i32, i32* %0, i32 1
  store i32 2, i32* %2
  %3 = getelementptr i32, i32* %0, i32 2
  store i32 3, i32* %3
  store i32* %0, i32** %int_array
  %malloccall1 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 3))
  %4 = bitcast i8* %malloccall1 to i8**
  %5 = getelementptr i8*, i8** %4, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"123", i32 0, i32 0), i8** %5
  %6 = getelementptr i8*, i8** %4, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"123.2", i32 0, i32 0), i8** %6
  %7 = getelementptr i8*, i8** %4, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"123.3", i32 0, i32 0), i8** %7
  store i8** %4, i8*** %str_array
  %malloccall2 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 6))
  %8 = bitcast i8* %malloccall2 to i32*
  %int_array3 = load i32*, i32** %int_array
  %9 = getelementptr i32, i32* %int_array3, i32 0
  %temp = load i32, i32* %9
  %10 = getelementptr i32, i32* %8, i32 0
  store i32 %temp, i32* %10
  %int_array4 = load i32*, i32** %int_array
  %11 = getelementptr i32, i32* %int_array4, i32 1
  %temp5 = load i32, i32* %11
  %12 = getelementptr i32, i32* %8, i32 1
  store i32 %temp5, i32* %12
  %int_array6 = load i32*, i32** %int_array
  %13 = getelementptr i32, i32* %int_array6, i32 2
  %temp7 = load i32, i32* %13
  %14 = getelementptr i32, i32* %8, i32 2
  store i32 %temp7, i32* %14
  %int_array8 = load i32*, i32** %int_array
  %15 = getelementptr i32, i32* %int_array8, i32 0
  %temp9 = load i32, i32* %15
  %16 = getelementptr i32, i32* %8, i32 3
  store i32 %temp9, i32* %16
  %int_array10 = load i32*, i32** %int_array
  %17 = getelementptr i32, i32* %int_array10, i32 1
  %temp11 = load i32, i32* %17
  %18 = getelementptr i32, i32* %8, i32 4
  store i32 %temp11, i32* %18
  %int_array12 = load i32*, i32** %int_array
  %19 = getelementptr i32, i32* %int_array12, i32 2
  %temp13 = load i32, i32* %19
  %20 = getelementptr i32, i32* %8, i32 5
  store i32 %temp13, i32* %20
  store i32* %8, i32** %double_int
  %malloccall14 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %21 = bitcast i8* %malloccall14 to i8**
  %str_array15 = load i8**, i8*** %str_array
  %22 = getelementptr i8*, i8** %str_array15, i32 0
  %temp16 = load i8*, i8** %22
  %23 = getelementptr i8*, i8** %21, i32 0
  store i8* %temp16, i8** %23
  %str_array17 = load i8**, i8*** %str_array
  %24 = getelementptr i8*, i8** %str_array17, i32 1
  %temp18 = load i8*, i8** %24
  %25 = getelementptr i8*, i8** %21, i32 1
  store i8* %temp18, i8** %25
  %str_array19 = load i8**, i8*** %str_array
  %26 = getelementptr i8*, i8** %str_array19, i32 2
  %temp20 = load i8*, i8** %26
  %27 = getelementptr i8*, i8** %21, i32 2
  store i8* %temp20, i8** %27
  %str_array21 = load i8**, i8*** %str_array
  %28 = getelementptr i8*, i8** %str_array21, i32 0
  %temp22 = load i8*, i8** %28
  %29 = getelementptr i8*, i8** %21, i32 3
  store i8* %temp22, i8** %29
  %str_array23 = load i8**, i8*** %str_array
  %30 = getelementptr i8*, i8** %str_array23, i32 1
  %temp24 = load i8*, i8** %30
  %31 = getelementptr i8*, i8** %21, i32 4
  store i8* %temp24, i8** %31
  %str_array25 = load i8**, i8*** %str_array
  %32 = getelementptr i8*, i8** %str_array25, i32 2
  %temp26 = load i8*, i8** %32
  %33 = getelementptr i8*, i8** %21, i32 5
  store i8* %temp26, i8** %33
  store i8** %21, i8*** %double_str
  %int_array27 = load i32*, i32** %int_array
  %34 = getelementptr i32, i32* %int_array27, i32 0
  store i32 50, i32* %34
  %str_array28 = load i8**, i8*** %str_array
  %35 = getelementptr i8*, i8** %str_array28, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"123.4", i32 0, i32 0), i8** %35
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i32 = load i32, i32* %i
  %tmp33 = icmp slt i32 %i32, 6
  br i1 %tmp33, label %while_body, label %merge

while_body:                                       ; preds = %while
  %double_int29 = load i32*, i32** %double_int
  %i30 = load i32, i32* %i
  %36 = getelementptr i32, i32* %double_int29, i32 %i30
  %37 = load i32, i32* %36
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %37)
  %i31 = load i32, i32* %i
  %tmp = add i32 %i31, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  store i32 0, i32* %i
  br label %while34

while34:                                          ; preds = %while_body35, %merge
  %i40 = load i32, i32* %i
  %tmp41 = icmp slt i32 %i40, 6
  br i1 %tmp41, label %while_body35, label %merge42

while_body35:                                     ; preds = %while34
  %double_str36 = load i8**, i8*** %double_str
  %i37 = load i32, i32* %i
  %38 = getelementptr i8*, i8** %double_str36, i32 %i37
  %39 = load i8*, i8** %38
  %prints = call i32 (i8*, ...) @puts(i8* %39)
  %i38 = load i32, i32* %i
  %tmp39 = add i32 %i38, 1
  store i32 %tmp39, i32* %i
  br label %while34

merge42:                                          ; preds = %while34
  ret i32 0
}

declare noalias i8* @malloc(i32)
