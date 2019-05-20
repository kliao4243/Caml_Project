; ModuleID = 'CAML'
source_filename = "CAML"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"123" = private unnamed_addr constant [2 x i8] c"i\00", align 1
@"123.2" = private unnamed_addr constant [5 x i8] c"like\00", align 1
@"123.3" = private unnamed_addr constant [7 x i8] c"coding\00", align 1
@"123.4" = private unnamed_addr constant [6 x i8] c"ocaml\00", align 1
@"4#" = private unnamed_addr constant [4 x i8] c"1^4\00", align 1
@"4#.5" = private unnamed_addr constant [4 x i8] c"2^4\00", align 1
@"4#.6" = private unnamed_addr constant [4 x i8] c"3#4\00", align 1
@"4#.7" = private unnamed_addr constant [4 x i8] c"4#4\00", align 1
@"123.8" = private unnamed_addr constant [5 x i8] c"java\00", align 1
@"4#.9" = private unnamed_addr constant [4 x i8] c"1^4\00", align 1

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
  %bool_array = alloca i1*
  %str_array = alloca i8**
  %pitch_array = alloca i8**
  %float_array = alloca double*
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
  %malloccall1 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 4))
  %5 = bitcast i8* %malloccall1 to i1*
  %6 = getelementptr i1, i1* %5, i32 0
  store i1 true, i1* %6
  %7 = getelementptr i1, i1* %5, i32 1
  store i1 false, i1* %7
  %8 = getelementptr i1, i1* %5, i32 2
  store i1 true, i1* %8
  %9 = getelementptr i1, i1* %5, i32 3
  store i1 false, i1* %9
  store i1* %5, i1** %bool_array
  %malloccall2 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 4))
  %10 = bitcast i8* %malloccall2 to i8**
  %11 = getelementptr i8*, i8** %10, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"123", i32 0, i32 0), i8** %11
  %12 = getelementptr i8*, i8** %10, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"123.2", i32 0, i32 0), i8** %12
  %13 = getelementptr i8*, i8** %10, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"123.3", i32 0, i32 0), i8** %13
  %14 = getelementptr i8*, i8** %10, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"123.4", i32 0, i32 0), i8** %14
  store i8** %10, i8*** %str_array
  %malloccall3 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 4))
  %15 = bitcast i8* %malloccall3 to i8**
  %16 = getelementptr i8*, i8** %15, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#", i32 0, i32 0), i8** %16
  %17 = getelementptr i8*, i8** %15, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.5", i32 0, i32 0), i8** %17
  %18 = getelementptr i8*, i8** %15, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.6", i32 0, i32 0), i8** %18
  %19 = getelementptr i8*, i8** %15, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.7", i32 0, i32 0), i8** %19
  store i8** %15, i8*** %pitch_array
  %malloccall4 = tail call i8* @malloc(i32 mul (i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 4))
  %20 = bitcast i8* %malloccall4 to double*
  %21 = getelementptr double, double* %20, i32 0
  store double 1.100000e+00, double* %21
  %22 = getelementptr double, double* %20, i32 1
  store double 2.300000e+00, double* %22
  %23 = getelementptr double, double* %20, i32 2
  store double 3.400000e+00, double* %23
  %24 = getelementptr double, double* %20, i32 3
  store double 5.600000e+00, double* %24
  store double* %20, double** %float_array
  %int_array5 = load i32*, i32** %int_array
  %25 = getelementptr i32, i32* %int_array5, i32 2
  store i32 30, i32* %25
  %bool_array6 = load i1*, i1** %bool_array
  %26 = getelementptr i1, i1* %bool_array6, i32 1
  store i1 false, i1* %26
  %str_array7 = load i8**, i8*** %str_array
  %27 = getelementptr i8*, i8** %str_array7, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"123.8", i32 0, i32 0), i8** %27
  %pitch_array8 = load i8**, i8*** %pitch_array
  %28 = getelementptr i8*, i8** %pitch_array8, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.9", i32 0, i32 0), i8** %28
  %float_array9 = load double*, double** %float_array
  %29 = getelementptr double, double* %float_array9, i32 3
  store double 2.200000e+00, double* %29
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i21 = load i32, i32* %i
  %tmp22 = icmp slt i32 %i21, 4
  br i1 %tmp22, label %while_body, label %merge

while_body:                                       ; preds = %while
  %int_array10 = load i32*, i32** %int_array
  %i11 = load i32, i32* %i
  %30 = getelementptr i32, i32* %int_array10, i32 %i11
  %31 = load i32, i32* %30
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %31)
  %str_array12 = load i8**, i8*** %str_array
  %i13 = load i32, i32* %i
  %32 = getelementptr i8*, i8** %str_array12, i32 %i13
  %33 = load i8*, i8** %32
  %prints = call i32 (i8*, ...) @puts(i8* %33)
  %pitch_array14 = load i8**, i8*** %pitch_array
  %i15 = load i32, i32* %i
  %34 = getelementptr i8*, i8** %pitch_array14, i32 %i15
  %35 = load i8*, i8** %34
  %prints16 = call i32 (i8*, ...) @puts(i8* %35)
  %float_array17 = load double*, double** %float_array
  %i18 = load i32, i32* %i
  %36 = getelementptr double, double* %float_array17, i32 %i18
  %37 = load double, double* %36
  %printf19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), double %37)
  %i20 = load i32, i32* %i
  %tmp = add i32 %i20, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  ret i32 0
}

declare noalias i8* @malloc(i32)
