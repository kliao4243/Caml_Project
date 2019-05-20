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
@"123.8" = private unnamed_addr constant [5 x i8] c"very\00", align 1
@"123.9" = private unnamed_addr constant [5 x i8] c"much\00", align 1
@"123.10" = private unnamed_addr constant [5 x i8] c"very\00", align 1
@"123.11" = private unnamed_addr constant [5 x i8] c"much\00", align 1
@"4#.12" = private unnamed_addr constant [4 x i8] c"1^5\00", align 1
@"4#.13" = private unnamed_addr constant [4 x i8] c"1#4\00", align 1
@"4#.14" = private unnamed_addr constant [4 x i8] c"1^5\00", align 1
@"4#.15" = private unnamed_addr constant [4 x i8] c"1#4\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @puts(i8*, ...)

declare i32 @pitch_to_int(i8*, ...)

declare i32 @ran(i32, ...)

declare i32 @up_8(i8*, ...)

declare i32 @down_8(i8*, ...)

define i32 @main() {
entry:
  %i = alloca i32
  %int_array1 = alloca i32*
  %bool_array1 = alloca i1*
  %str_array1 = alloca i8**
  %pitch_array1 = alloca i8**
  %float_array1 = alloca double*
  %int_array2 = alloca i32*
  %bool_array2 = alloca i1*
  %str_array2 = alloca i8**
  %pitch_array2 = alloca i8**
  %float_array2 = alloca double*
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
  store i32* %0, i32** %int_array1
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
  store i1* %5, i1** %bool_array1
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
  store i8** %10, i8*** %str_array1
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
  store i8** %15, i8*** %pitch_array1
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
  store double* %20, double** %float_array1
  %malloccall5 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 6))
  %25 = bitcast i8* %malloccall5 to i32*
  %int_array16 = load i32*, i32** %int_array1
  %26 = getelementptr i32, i32* %int_array16, i32 0
  %temp = load i32, i32* %26
  %27 = getelementptr i32, i32* %25, i32 0
  store i32 %temp, i32* %27
  %int_array17 = load i32*, i32** %int_array1
  %28 = getelementptr i32, i32* %int_array17, i32 1
  %temp8 = load i32, i32* %28
  %29 = getelementptr i32, i32* %25, i32 1
  store i32 %temp8, i32* %29
  %int_array19 = load i32*, i32** %int_array1
  %30 = getelementptr i32, i32* %int_array19, i32 2
  %temp10 = load i32, i32* %30
  %31 = getelementptr i32, i32* %25, i32 2
  store i32 %temp10, i32* %31
  %int_array111 = load i32*, i32** %int_array1
  %32 = getelementptr i32, i32* %int_array111, i32 3
  %temp12 = load i32, i32* %32
  %33 = getelementptr i32, i32* %25, i32 3
  store i32 %temp12, i32* %33
  %malloccall13 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 2))
  %34 = bitcast i8* %malloccall13 to i32*
  %35 = getelementptr i32, i32* %34, i32 0
  store i32 5, i32* %35
  %36 = getelementptr i32, i32* %34, i32 1
  store i32 6, i32* %36
  %37 = getelementptr i32, i32* %34, i32 0
  %temp14 = load i32, i32* %37
  %38 = getelementptr i32, i32* %25, i32 4
  store i32 %temp14, i32* %38
  %malloccall15 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 2))
  %39 = bitcast i8* %malloccall15 to i32*
  %40 = getelementptr i32, i32* %39, i32 0
  store i32 5, i32* %40
  %41 = getelementptr i32, i32* %39, i32 1
  store i32 6, i32* %41
  %42 = getelementptr i32, i32* %39, i32 1
  %temp16 = load i32, i32* %42
  %43 = getelementptr i32, i32* %25, i32 5
  store i32 %temp16, i32* %43
  store i32* %25, i32** %int_array2
  %malloccall17 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 6))
  %44 = bitcast i8* %malloccall17 to i1*
  %bool_array118 = load i1*, i1** %bool_array1
  %45 = getelementptr i1, i1* %bool_array118, i32 0
  %temp19 = load i1, i1* %45
  %46 = getelementptr i1, i1* %44, i32 0
  store i1 %temp19, i1* %46
  %bool_array120 = load i1*, i1** %bool_array1
  %47 = getelementptr i1, i1* %bool_array120, i32 1
  %temp21 = load i1, i1* %47
  %48 = getelementptr i1, i1* %44, i32 1
  store i1 %temp21, i1* %48
  %bool_array122 = load i1*, i1** %bool_array1
  %49 = getelementptr i1, i1* %bool_array122, i32 2
  %temp23 = load i1, i1* %49
  %50 = getelementptr i1, i1* %44, i32 2
  store i1 %temp23, i1* %50
  %bool_array124 = load i1*, i1** %bool_array1
  %51 = getelementptr i1, i1* %bool_array124, i32 3
  %temp25 = load i1, i1* %51
  %52 = getelementptr i1, i1* %44, i32 3
  store i1 %temp25, i1* %52
  %malloccall26 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 2))
  %53 = bitcast i8* %malloccall26 to i1*
  %54 = getelementptr i1, i1* %53, i32 0
  store i1 true, i1* %54
  %55 = getelementptr i1, i1* %53, i32 1
  store i1 true, i1* %55
  %56 = getelementptr i1, i1* %53, i32 0
  %temp27 = load i1, i1* %56
  %57 = getelementptr i1, i1* %44, i32 4
  store i1 %temp27, i1* %57
  %malloccall28 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 2))
  %58 = bitcast i8* %malloccall28 to i1*
  %59 = getelementptr i1, i1* %58, i32 0
  store i1 true, i1* %59
  %60 = getelementptr i1, i1* %58, i32 1
  store i1 true, i1* %60
  %61 = getelementptr i1, i1* %58, i32 1
  %temp29 = load i1, i1* %61
  %62 = getelementptr i1, i1* %44, i32 5
  store i1 %temp29, i1* %62
  store i1* %44, i1** %bool_array2
  %malloccall30 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %63 = bitcast i8* %malloccall30 to i8**
  %str_array131 = load i8**, i8*** %str_array1
  %64 = getelementptr i8*, i8** %str_array131, i32 0
  %temp32 = load i8*, i8** %64
  %65 = getelementptr i8*, i8** %63, i32 0
  store i8* %temp32, i8** %65
  %str_array133 = load i8**, i8*** %str_array1
  %66 = getelementptr i8*, i8** %str_array133, i32 1
  %temp34 = load i8*, i8** %66
  %67 = getelementptr i8*, i8** %63, i32 1
  store i8* %temp34, i8** %67
  %str_array135 = load i8**, i8*** %str_array1
  %68 = getelementptr i8*, i8** %str_array135, i32 2
  %temp36 = load i8*, i8** %68
  %69 = getelementptr i8*, i8** %63, i32 2
  store i8* %temp36, i8** %69
  %str_array137 = load i8**, i8*** %str_array1
  %70 = getelementptr i8*, i8** %str_array137, i32 3
  %temp38 = load i8*, i8** %70
  %71 = getelementptr i8*, i8** %63, i32 3
  store i8* %temp38, i8** %71
  %malloccall39 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 2))
  %72 = bitcast i8* %malloccall39 to i8**
  %73 = getelementptr i8*, i8** %72, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"123.8", i32 0, i32 0), i8** %73
  %74 = getelementptr i8*, i8** %72, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"123.9", i32 0, i32 0), i8** %74
  %75 = getelementptr i8*, i8** %72, i32 0
  %temp40 = load i8*, i8** %75
  %76 = getelementptr i8*, i8** %63, i32 4
  store i8* %temp40, i8** %76
  %malloccall41 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 2))
  %77 = bitcast i8* %malloccall41 to i8**
  %78 = getelementptr i8*, i8** %77, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"123.10", i32 0, i32 0), i8** %78
  %79 = getelementptr i8*, i8** %77, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"123.11", i32 0, i32 0), i8** %79
  %80 = getelementptr i8*, i8** %77, i32 1
  %temp42 = load i8*, i8** %80
  %81 = getelementptr i8*, i8** %63, i32 5
  store i8* %temp42, i8** %81
  store i8** %63, i8*** %str_array2
  %malloccall43 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %82 = bitcast i8* %malloccall43 to i8**
  %pitch_array144 = load i8**, i8*** %pitch_array1
  %83 = getelementptr i8*, i8** %pitch_array144, i32 0
  %temp45 = load i8*, i8** %83
  %84 = getelementptr i8*, i8** %82, i32 0
  store i8* %temp45, i8** %84
  %pitch_array146 = load i8**, i8*** %pitch_array1
  %85 = getelementptr i8*, i8** %pitch_array146, i32 1
  %temp47 = load i8*, i8** %85
  %86 = getelementptr i8*, i8** %82, i32 1
  store i8* %temp47, i8** %86
  %pitch_array148 = load i8**, i8*** %pitch_array1
  %87 = getelementptr i8*, i8** %pitch_array148, i32 2
  %temp49 = load i8*, i8** %87
  %88 = getelementptr i8*, i8** %82, i32 2
  store i8* %temp49, i8** %88
  %pitch_array150 = load i8**, i8*** %pitch_array1
  %89 = getelementptr i8*, i8** %pitch_array150, i32 3
  %temp51 = load i8*, i8** %89
  %90 = getelementptr i8*, i8** %82, i32 3
  store i8* %temp51, i8** %90
  %malloccall52 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 2))
  %91 = bitcast i8* %malloccall52 to i8**
  %92 = getelementptr i8*, i8** %91, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.12", i32 0, i32 0), i8** %92
  %93 = getelementptr i8*, i8** %91, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.13", i32 0, i32 0), i8** %93
  %94 = getelementptr i8*, i8** %91, i32 0
  %temp53 = load i8*, i8** %94
  %95 = getelementptr i8*, i8** %82, i32 4
  store i8* %temp53, i8** %95
  %malloccall54 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 2))
  %96 = bitcast i8* %malloccall54 to i8**
  %97 = getelementptr i8*, i8** %96, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.14", i32 0, i32 0), i8** %97
  %98 = getelementptr i8*, i8** %96, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.15", i32 0, i32 0), i8** %98
  %99 = getelementptr i8*, i8** %96, i32 1
  %temp55 = load i8*, i8** %99
  %100 = getelementptr i8*, i8** %82, i32 5
  store i8* %temp55, i8** %100
  store i8** %82, i8*** %pitch_array2
  %malloccall56 = tail call i8* @malloc(i32 mul (i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 6))
  %101 = bitcast i8* %malloccall56 to double*
  %float_array157 = load double*, double** %float_array1
  %102 = getelementptr double, double* %float_array157, i32 0
  %temp58 = load double, double* %102
  %103 = getelementptr double, double* %101, i32 0
  store double %temp58, double* %103
  %float_array159 = load double*, double** %float_array1
  %104 = getelementptr double, double* %float_array159, i32 1
  %temp60 = load double, double* %104
  %105 = getelementptr double, double* %101, i32 1
  store double %temp60, double* %105
  %float_array161 = load double*, double** %float_array1
  %106 = getelementptr double, double* %float_array161, i32 2
  %temp62 = load double, double* %106
  %107 = getelementptr double, double* %101, i32 2
  store double %temp62, double* %107
  %float_array163 = load double*, double** %float_array1
  %108 = getelementptr double, double* %float_array163, i32 3
  %temp64 = load double, double* %108
  %109 = getelementptr double, double* %101, i32 3
  store double %temp64, double* %109
  %malloccall65 = tail call i8* @malloc(i32 mul (i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 2))
  %110 = bitcast i8* %malloccall65 to double*
  %111 = getelementptr double, double* %110, i32 0
  store double 1.400000e+00, double* %111
  %112 = getelementptr double, double* %110, i32 1
  store double 1.030000e+01, double* %112
  %113 = getelementptr double, double* %110, i32 0
  %temp66 = load double, double* %113
  %114 = getelementptr double, double* %101, i32 4
  store double %temp66, double* %114
  %malloccall67 = tail call i8* @malloc(i32 mul (i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 2))
  %115 = bitcast i8* %malloccall67 to double*
  %116 = getelementptr double, double* %115, i32 0
  store double 1.400000e+00, double* %116
  %117 = getelementptr double, double* %115, i32 1
  store double 1.030000e+01, double* %117
  %118 = getelementptr double, double* %115, i32 1
  %temp68 = load double, double* %118
  %119 = getelementptr double, double* %101, i32 5
  store double %temp68, double* %119
  store double* %101, double** %float_array2
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i80 = load i32, i32* %i
  %tmp81 = icmp slt i32 %i80, 6
  br i1 %tmp81, label %while_body, label %merge

while_body:                                       ; preds = %while
  %int_array269 = load i32*, i32** %int_array2
  %i70 = load i32, i32* %i
  %120 = getelementptr i32, i32* %int_array269, i32 %i70
  %121 = load i32, i32* %120
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %121)
  %str_array271 = load i8**, i8*** %str_array2
  %i72 = load i32, i32* %i
  %122 = getelementptr i8*, i8** %str_array271, i32 %i72
  %123 = load i8*, i8** %122
  %prints = call i32 (i8*, ...) @puts(i8* %123)
  %pitch_array273 = load i8**, i8*** %pitch_array2
  %i74 = load i32, i32* %i
  %124 = getelementptr i8*, i8** %pitch_array273, i32 %i74
  %125 = load i8*, i8** %124
  %prints75 = call i32 (i8*, ...) @puts(i8* %125)
  %float_array276 = load double*, double** %float_array2
  %i77 = load i32, i32* %i
  %126 = getelementptr double, double* %float_array276, i32 %i77
  %127 = load double, double* %126
  %printf78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), double %127)
  %i79 = load i32, i32* %i
  %tmp = add i32 %i79, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  ret i32 0
}

declare noalias i8* @malloc(i32)
