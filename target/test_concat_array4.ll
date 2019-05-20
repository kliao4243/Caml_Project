; ModuleID = 'CAML'
source_filename = "CAML"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"123" = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@"123.2" = private unnamed_addr constant [6 x i8] c"world\00", align 1
@"123.3" = private unnamed_addr constant [5 x i8] c"love\00", align 1

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
  %triple_int = alloca i32*
  %quad_str = alloca i8**
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
  %malloccall2 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 9))
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
  %malloccall8 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 6))
  %15 = bitcast i8* %malloccall8 to i32*
  %int_array9 = load i32*, i32** %int_array
  %16 = getelementptr i32, i32* %int_array9, i32 0
  %temp10 = load i32, i32* %16
  %17 = getelementptr i32, i32* %15, i32 0
  store i32 %temp10, i32* %17
  %int_array11 = load i32*, i32** %int_array
  %18 = getelementptr i32, i32* %int_array11, i32 1
  %temp12 = load i32, i32* %18
  %19 = getelementptr i32, i32* %15, i32 1
  store i32 %temp12, i32* %19
  %int_array13 = load i32*, i32** %int_array
  %20 = getelementptr i32, i32* %int_array13, i32 2
  %temp14 = load i32, i32* %20
  %21 = getelementptr i32, i32* %15, i32 2
  store i32 %temp14, i32* %21
  %int_array15 = load i32*, i32** %int_array
  %22 = getelementptr i32, i32* %int_array15, i32 0
  %temp16 = load i32, i32* %22
  %23 = getelementptr i32, i32* %15, i32 3
  store i32 %temp16, i32* %23
  %int_array17 = load i32*, i32** %int_array
  %24 = getelementptr i32, i32* %int_array17, i32 1
  %temp18 = load i32, i32* %24
  %25 = getelementptr i32, i32* %15, i32 4
  store i32 %temp18, i32* %25
  %int_array19 = load i32*, i32** %int_array
  %26 = getelementptr i32, i32* %int_array19, i32 2
  %temp20 = load i32, i32* %26
  %27 = getelementptr i32, i32* %15, i32 5
  store i32 %temp20, i32* %27
  %28 = getelementptr i32, i32* %15, i32 0
  %temp21 = load i32, i32* %28
  %29 = getelementptr i32, i32* %8, i32 3
  store i32 %temp21, i32* %29
  %malloccall22 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 6))
  %30 = bitcast i8* %malloccall22 to i32*
  %int_array23 = load i32*, i32** %int_array
  %31 = getelementptr i32, i32* %int_array23, i32 0
  %temp24 = load i32, i32* %31
  %32 = getelementptr i32, i32* %30, i32 0
  store i32 %temp24, i32* %32
  %int_array25 = load i32*, i32** %int_array
  %33 = getelementptr i32, i32* %int_array25, i32 1
  %temp26 = load i32, i32* %33
  %34 = getelementptr i32, i32* %30, i32 1
  store i32 %temp26, i32* %34
  %int_array27 = load i32*, i32** %int_array
  %35 = getelementptr i32, i32* %int_array27, i32 2
  %temp28 = load i32, i32* %35
  %36 = getelementptr i32, i32* %30, i32 2
  store i32 %temp28, i32* %36
  %int_array29 = load i32*, i32** %int_array
  %37 = getelementptr i32, i32* %int_array29, i32 0
  %temp30 = load i32, i32* %37
  %38 = getelementptr i32, i32* %30, i32 3
  store i32 %temp30, i32* %38
  %int_array31 = load i32*, i32** %int_array
  %39 = getelementptr i32, i32* %int_array31, i32 1
  %temp32 = load i32, i32* %39
  %40 = getelementptr i32, i32* %30, i32 4
  store i32 %temp32, i32* %40
  %int_array33 = load i32*, i32** %int_array
  %41 = getelementptr i32, i32* %int_array33, i32 2
  %temp34 = load i32, i32* %41
  %42 = getelementptr i32, i32* %30, i32 5
  store i32 %temp34, i32* %42
  %43 = getelementptr i32, i32* %30, i32 1
  %temp35 = load i32, i32* %43
  %44 = getelementptr i32, i32* %8, i32 4
  store i32 %temp35, i32* %44
  %malloccall36 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 6))
  %45 = bitcast i8* %malloccall36 to i32*
  %int_array37 = load i32*, i32** %int_array
  %46 = getelementptr i32, i32* %int_array37, i32 0
  %temp38 = load i32, i32* %46
  %47 = getelementptr i32, i32* %45, i32 0
  store i32 %temp38, i32* %47
  %int_array39 = load i32*, i32** %int_array
  %48 = getelementptr i32, i32* %int_array39, i32 1
  %temp40 = load i32, i32* %48
  %49 = getelementptr i32, i32* %45, i32 1
  store i32 %temp40, i32* %49
  %int_array41 = load i32*, i32** %int_array
  %50 = getelementptr i32, i32* %int_array41, i32 2
  %temp42 = load i32, i32* %50
  %51 = getelementptr i32, i32* %45, i32 2
  store i32 %temp42, i32* %51
  %int_array43 = load i32*, i32** %int_array
  %52 = getelementptr i32, i32* %int_array43, i32 0
  %temp44 = load i32, i32* %52
  %53 = getelementptr i32, i32* %45, i32 3
  store i32 %temp44, i32* %53
  %int_array45 = load i32*, i32** %int_array
  %54 = getelementptr i32, i32* %int_array45, i32 1
  %temp46 = load i32, i32* %54
  %55 = getelementptr i32, i32* %45, i32 4
  store i32 %temp46, i32* %55
  %int_array47 = load i32*, i32** %int_array
  %56 = getelementptr i32, i32* %int_array47, i32 2
  %temp48 = load i32, i32* %56
  %57 = getelementptr i32, i32* %45, i32 5
  store i32 %temp48, i32* %57
  %58 = getelementptr i32, i32* %45, i32 2
  %temp49 = load i32, i32* %58
  %59 = getelementptr i32, i32* %8, i32 5
  store i32 %temp49, i32* %59
  %malloccall50 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 6))
  %60 = bitcast i8* %malloccall50 to i32*
  %int_array51 = load i32*, i32** %int_array
  %61 = getelementptr i32, i32* %int_array51, i32 0
  %temp52 = load i32, i32* %61
  %62 = getelementptr i32, i32* %60, i32 0
  store i32 %temp52, i32* %62
  %int_array53 = load i32*, i32** %int_array
  %63 = getelementptr i32, i32* %int_array53, i32 1
  %temp54 = load i32, i32* %63
  %64 = getelementptr i32, i32* %60, i32 1
  store i32 %temp54, i32* %64
  %int_array55 = load i32*, i32** %int_array
  %65 = getelementptr i32, i32* %int_array55, i32 2
  %temp56 = load i32, i32* %65
  %66 = getelementptr i32, i32* %60, i32 2
  store i32 %temp56, i32* %66
  %int_array57 = load i32*, i32** %int_array
  %67 = getelementptr i32, i32* %int_array57, i32 0
  %temp58 = load i32, i32* %67
  %68 = getelementptr i32, i32* %60, i32 3
  store i32 %temp58, i32* %68
  %int_array59 = load i32*, i32** %int_array
  %69 = getelementptr i32, i32* %int_array59, i32 1
  %temp60 = load i32, i32* %69
  %70 = getelementptr i32, i32* %60, i32 4
  store i32 %temp60, i32* %70
  %int_array61 = load i32*, i32** %int_array
  %71 = getelementptr i32, i32* %int_array61, i32 2
  %temp62 = load i32, i32* %71
  %72 = getelementptr i32, i32* %60, i32 5
  store i32 %temp62, i32* %72
  %73 = getelementptr i32, i32* %60, i32 3
  %temp63 = load i32, i32* %73
  %74 = getelementptr i32, i32* %8, i32 6
  store i32 %temp63, i32* %74
  %malloccall64 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 6))
  %75 = bitcast i8* %malloccall64 to i32*
  %int_array65 = load i32*, i32** %int_array
  %76 = getelementptr i32, i32* %int_array65, i32 0
  %temp66 = load i32, i32* %76
  %77 = getelementptr i32, i32* %75, i32 0
  store i32 %temp66, i32* %77
  %int_array67 = load i32*, i32** %int_array
  %78 = getelementptr i32, i32* %int_array67, i32 1
  %temp68 = load i32, i32* %78
  %79 = getelementptr i32, i32* %75, i32 1
  store i32 %temp68, i32* %79
  %int_array69 = load i32*, i32** %int_array
  %80 = getelementptr i32, i32* %int_array69, i32 2
  %temp70 = load i32, i32* %80
  %81 = getelementptr i32, i32* %75, i32 2
  store i32 %temp70, i32* %81
  %int_array71 = load i32*, i32** %int_array
  %82 = getelementptr i32, i32* %int_array71, i32 0
  %temp72 = load i32, i32* %82
  %83 = getelementptr i32, i32* %75, i32 3
  store i32 %temp72, i32* %83
  %int_array73 = load i32*, i32** %int_array
  %84 = getelementptr i32, i32* %int_array73, i32 1
  %temp74 = load i32, i32* %84
  %85 = getelementptr i32, i32* %75, i32 4
  store i32 %temp74, i32* %85
  %int_array75 = load i32*, i32** %int_array
  %86 = getelementptr i32, i32* %int_array75, i32 2
  %temp76 = load i32, i32* %86
  %87 = getelementptr i32, i32* %75, i32 5
  store i32 %temp76, i32* %87
  %88 = getelementptr i32, i32* %75, i32 4
  %temp77 = load i32, i32* %88
  %89 = getelementptr i32, i32* %8, i32 7
  store i32 %temp77, i32* %89
  %malloccall78 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 6))
  %90 = bitcast i8* %malloccall78 to i32*
  %int_array79 = load i32*, i32** %int_array
  %91 = getelementptr i32, i32* %int_array79, i32 0
  %temp80 = load i32, i32* %91
  %92 = getelementptr i32, i32* %90, i32 0
  store i32 %temp80, i32* %92
  %int_array81 = load i32*, i32** %int_array
  %93 = getelementptr i32, i32* %int_array81, i32 1
  %temp82 = load i32, i32* %93
  %94 = getelementptr i32, i32* %90, i32 1
  store i32 %temp82, i32* %94
  %int_array83 = load i32*, i32** %int_array
  %95 = getelementptr i32, i32* %int_array83, i32 2
  %temp84 = load i32, i32* %95
  %96 = getelementptr i32, i32* %90, i32 2
  store i32 %temp84, i32* %96
  %int_array85 = load i32*, i32** %int_array
  %97 = getelementptr i32, i32* %int_array85, i32 0
  %temp86 = load i32, i32* %97
  %98 = getelementptr i32, i32* %90, i32 3
  store i32 %temp86, i32* %98
  %int_array87 = load i32*, i32** %int_array
  %99 = getelementptr i32, i32* %int_array87, i32 1
  %temp88 = load i32, i32* %99
  %100 = getelementptr i32, i32* %90, i32 4
  store i32 %temp88, i32* %100
  %int_array89 = load i32*, i32** %int_array
  %101 = getelementptr i32, i32* %int_array89, i32 2
  %temp90 = load i32, i32* %101
  %102 = getelementptr i32, i32* %90, i32 5
  store i32 %temp90, i32* %102
  %103 = getelementptr i32, i32* %90, i32 5
  %temp91 = load i32, i32* %103
  %104 = getelementptr i32, i32* %8, i32 8
  store i32 %temp91, i32* %104
  store i32* %8, i32** %triple_int
  %malloccall92 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 12))
  %105 = bitcast i8* %malloccall92 to i8**
  %str_array93 = load i8**, i8*** %str_array
  %106 = getelementptr i8*, i8** %str_array93, i32 0
  %temp94 = load i8*, i8** %106
  %107 = getelementptr i8*, i8** %105, i32 0
  store i8* %temp94, i8** %107
  %str_array95 = load i8**, i8*** %str_array
  %108 = getelementptr i8*, i8** %str_array95, i32 1
  %temp96 = load i8*, i8** %108
  %109 = getelementptr i8*, i8** %105, i32 1
  store i8* %temp96, i8** %109
  %str_array97 = load i8**, i8*** %str_array
  %110 = getelementptr i8*, i8** %str_array97, i32 2
  %temp98 = load i8*, i8** %110
  %111 = getelementptr i8*, i8** %105, i32 2
  store i8* %temp98, i8** %111
  %malloccall99 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 9))
  %112 = bitcast i8* %malloccall99 to i8**
  %str_array100 = load i8**, i8*** %str_array
  %113 = getelementptr i8*, i8** %str_array100, i32 0
  %temp101 = load i8*, i8** %113
  %114 = getelementptr i8*, i8** %112, i32 0
  store i8* %temp101, i8** %114
  %str_array102 = load i8**, i8*** %str_array
  %115 = getelementptr i8*, i8** %str_array102, i32 1
  %temp103 = load i8*, i8** %115
  %116 = getelementptr i8*, i8** %112, i32 1
  store i8* %temp103, i8** %116
  %str_array104 = load i8**, i8*** %str_array
  %117 = getelementptr i8*, i8** %str_array104, i32 2
  %temp105 = load i8*, i8** %117
  %118 = getelementptr i8*, i8** %112, i32 2
  store i8* %temp105, i8** %118
  %malloccall106 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %119 = bitcast i8* %malloccall106 to i8**
  %str_array107 = load i8**, i8*** %str_array
  %120 = getelementptr i8*, i8** %str_array107, i32 0
  %temp108 = load i8*, i8** %120
  %121 = getelementptr i8*, i8** %119, i32 0
  store i8* %temp108, i8** %121
  %str_array109 = load i8**, i8*** %str_array
  %122 = getelementptr i8*, i8** %str_array109, i32 1
  %temp110 = load i8*, i8** %122
  %123 = getelementptr i8*, i8** %119, i32 1
  store i8* %temp110, i8** %123
  %str_array111 = load i8**, i8*** %str_array
  %124 = getelementptr i8*, i8** %str_array111, i32 2
  %temp112 = load i8*, i8** %124
  %125 = getelementptr i8*, i8** %119, i32 2
  store i8* %temp112, i8** %125
  %str_array113 = load i8**, i8*** %str_array
  %126 = getelementptr i8*, i8** %str_array113, i32 0
  %temp114 = load i8*, i8** %126
  %127 = getelementptr i8*, i8** %119, i32 3
  store i8* %temp114, i8** %127
  %str_array115 = load i8**, i8*** %str_array
  %128 = getelementptr i8*, i8** %str_array115, i32 1
  %temp116 = load i8*, i8** %128
  %129 = getelementptr i8*, i8** %119, i32 4
  store i8* %temp116, i8** %129
  %str_array117 = load i8**, i8*** %str_array
  %130 = getelementptr i8*, i8** %str_array117, i32 2
  %temp118 = load i8*, i8** %130
  %131 = getelementptr i8*, i8** %119, i32 5
  store i8* %temp118, i8** %131
  %132 = getelementptr i8*, i8** %119, i32 0
  %temp119 = load i8*, i8** %132
  %133 = getelementptr i8*, i8** %112, i32 3
  store i8* %temp119, i8** %133
  %malloccall120 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %134 = bitcast i8* %malloccall120 to i8**
  %str_array121 = load i8**, i8*** %str_array
  %135 = getelementptr i8*, i8** %str_array121, i32 0
  %temp122 = load i8*, i8** %135
  %136 = getelementptr i8*, i8** %134, i32 0
  store i8* %temp122, i8** %136
  %str_array123 = load i8**, i8*** %str_array
  %137 = getelementptr i8*, i8** %str_array123, i32 1
  %temp124 = load i8*, i8** %137
  %138 = getelementptr i8*, i8** %134, i32 1
  store i8* %temp124, i8** %138
  %str_array125 = load i8**, i8*** %str_array
  %139 = getelementptr i8*, i8** %str_array125, i32 2
  %temp126 = load i8*, i8** %139
  %140 = getelementptr i8*, i8** %134, i32 2
  store i8* %temp126, i8** %140
  %str_array127 = load i8**, i8*** %str_array
  %141 = getelementptr i8*, i8** %str_array127, i32 0
  %temp128 = load i8*, i8** %141
  %142 = getelementptr i8*, i8** %134, i32 3
  store i8* %temp128, i8** %142
  %str_array129 = load i8**, i8*** %str_array
  %143 = getelementptr i8*, i8** %str_array129, i32 1
  %temp130 = load i8*, i8** %143
  %144 = getelementptr i8*, i8** %134, i32 4
  store i8* %temp130, i8** %144
  %str_array131 = load i8**, i8*** %str_array
  %145 = getelementptr i8*, i8** %str_array131, i32 2
  %temp132 = load i8*, i8** %145
  %146 = getelementptr i8*, i8** %134, i32 5
  store i8* %temp132, i8** %146
  %147 = getelementptr i8*, i8** %134, i32 1
  %temp133 = load i8*, i8** %147
  %148 = getelementptr i8*, i8** %112, i32 4
  store i8* %temp133, i8** %148
  %malloccall134 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %149 = bitcast i8* %malloccall134 to i8**
  %str_array135 = load i8**, i8*** %str_array
  %150 = getelementptr i8*, i8** %str_array135, i32 0
  %temp136 = load i8*, i8** %150
  %151 = getelementptr i8*, i8** %149, i32 0
  store i8* %temp136, i8** %151
  %str_array137 = load i8**, i8*** %str_array
  %152 = getelementptr i8*, i8** %str_array137, i32 1
  %temp138 = load i8*, i8** %152
  %153 = getelementptr i8*, i8** %149, i32 1
  store i8* %temp138, i8** %153
  %str_array139 = load i8**, i8*** %str_array
  %154 = getelementptr i8*, i8** %str_array139, i32 2
  %temp140 = load i8*, i8** %154
  %155 = getelementptr i8*, i8** %149, i32 2
  store i8* %temp140, i8** %155
  %str_array141 = load i8**, i8*** %str_array
  %156 = getelementptr i8*, i8** %str_array141, i32 0
  %temp142 = load i8*, i8** %156
  %157 = getelementptr i8*, i8** %149, i32 3
  store i8* %temp142, i8** %157
  %str_array143 = load i8**, i8*** %str_array
  %158 = getelementptr i8*, i8** %str_array143, i32 1
  %temp144 = load i8*, i8** %158
  %159 = getelementptr i8*, i8** %149, i32 4
  store i8* %temp144, i8** %159
  %str_array145 = load i8**, i8*** %str_array
  %160 = getelementptr i8*, i8** %str_array145, i32 2
  %temp146 = load i8*, i8** %160
  %161 = getelementptr i8*, i8** %149, i32 5
  store i8* %temp146, i8** %161
  %162 = getelementptr i8*, i8** %149, i32 2
  %temp147 = load i8*, i8** %162
  %163 = getelementptr i8*, i8** %112, i32 5
  store i8* %temp147, i8** %163
  %malloccall148 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %164 = bitcast i8* %malloccall148 to i8**
  %str_array149 = load i8**, i8*** %str_array
  %165 = getelementptr i8*, i8** %str_array149, i32 0
  %temp150 = load i8*, i8** %165
  %166 = getelementptr i8*, i8** %164, i32 0
  store i8* %temp150, i8** %166
  %str_array151 = load i8**, i8*** %str_array
  %167 = getelementptr i8*, i8** %str_array151, i32 1
  %temp152 = load i8*, i8** %167
  %168 = getelementptr i8*, i8** %164, i32 1
  store i8* %temp152, i8** %168
  %str_array153 = load i8**, i8*** %str_array
  %169 = getelementptr i8*, i8** %str_array153, i32 2
  %temp154 = load i8*, i8** %169
  %170 = getelementptr i8*, i8** %164, i32 2
  store i8* %temp154, i8** %170
  %str_array155 = load i8**, i8*** %str_array
  %171 = getelementptr i8*, i8** %str_array155, i32 0
  %temp156 = load i8*, i8** %171
  %172 = getelementptr i8*, i8** %164, i32 3
  store i8* %temp156, i8** %172
  %str_array157 = load i8**, i8*** %str_array
  %173 = getelementptr i8*, i8** %str_array157, i32 1
  %temp158 = load i8*, i8** %173
  %174 = getelementptr i8*, i8** %164, i32 4
  store i8* %temp158, i8** %174
  %str_array159 = load i8**, i8*** %str_array
  %175 = getelementptr i8*, i8** %str_array159, i32 2
  %temp160 = load i8*, i8** %175
  %176 = getelementptr i8*, i8** %164, i32 5
  store i8* %temp160, i8** %176
  %177 = getelementptr i8*, i8** %164, i32 3
  %temp161 = load i8*, i8** %177
  %178 = getelementptr i8*, i8** %112, i32 6
  store i8* %temp161, i8** %178
  %malloccall162 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %179 = bitcast i8* %malloccall162 to i8**
  %str_array163 = load i8**, i8*** %str_array
  %180 = getelementptr i8*, i8** %str_array163, i32 0
  %temp164 = load i8*, i8** %180
  %181 = getelementptr i8*, i8** %179, i32 0
  store i8* %temp164, i8** %181
  %str_array165 = load i8**, i8*** %str_array
  %182 = getelementptr i8*, i8** %str_array165, i32 1
  %temp166 = load i8*, i8** %182
  %183 = getelementptr i8*, i8** %179, i32 1
  store i8* %temp166, i8** %183
  %str_array167 = load i8**, i8*** %str_array
  %184 = getelementptr i8*, i8** %str_array167, i32 2
  %temp168 = load i8*, i8** %184
  %185 = getelementptr i8*, i8** %179, i32 2
  store i8* %temp168, i8** %185
  %str_array169 = load i8**, i8*** %str_array
  %186 = getelementptr i8*, i8** %str_array169, i32 0
  %temp170 = load i8*, i8** %186
  %187 = getelementptr i8*, i8** %179, i32 3
  store i8* %temp170, i8** %187
  %str_array171 = load i8**, i8*** %str_array
  %188 = getelementptr i8*, i8** %str_array171, i32 1
  %temp172 = load i8*, i8** %188
  %189 = getelementptr i8*, i8** %179, i32 4
  store i8* %temp172, i8** %189
  %str_array173 = load i8**, i8*** %str_array
  %190 = getelementptr i8*, i8** %str_array173, i32 2
  %temp174 = load i8*, i8** %190
  %191 = getelementptr i8*, i8** %179, i32 5
  store i8* %temp174, i8** %191
  %192 = getelementptr i8*, i8** %179, i32 4
  %temp175 = load i8*, i8** %192
  %193 = getelementptr i8*, i8** %112, i32 7
  store i8* %temp175, i8** %193
  %malloccall176 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %194 = bitcast i8* %malloccall176 to i8**
  %str_array177 = load i8**, i8*** %str_array
  %195 = getelementptr i8*, i8** %str_array177, i32 0
  %temp178 = load i8*, i8** %195
  %196 = getelementptr i8*, i8** %194, i32 0
  store i8* %temp178, i8** %196
  %str_array179 = load i8**, i8*** %str_array
  %197 = getelementptr i8*, i8** %str_array179, i32 1
  %temp180 = load i8*, i8** %197
  %198 = getelementptr i8*, i8** %194, i32 1
  store i8* %temp180, i8** %198
  %str_array181 = load i8**, i8*** %str_array
  %199 = getelementptr i8*, i8** %str_array181, i32 2
  %temp182 = load i8*, i8** %199
  %200 = getelementptr i8*, i8** %194, i32 2
  store i8* %temp182, i8** %200
  %str_array183 = load i8**, i8*** %str_array
  %201 = getelementptr i8*, i8** %str_array183, i32 0
  %temp184 = load i8*, i8** %201
  %202 = getelementptr i8*, i8** %194, i32 3
  store i8* %temp184, i8** %202
  %str_array185 = load i8**, i8*** %str_array
  %203 = getelementptr i8*, i8** %str_array185, i32 1
  %temp186 = load i8*, i8** %203
  %204 = getelementptr i8*, i8** %194, i32 4
  store i8* %temp186, i8** %204
  %str_array187 = load i8**, i8*** %str_array
  %205 = getelementptr i8*, i8** %str_array187, i32 2
  %temp188 = load i8*, i8** %205
  %206 = getelementptr i8*, i8** %194, i32 5
  store i8* %temp188, i8** %206
  %207 = getelementptr i8*, i8** %194, i32 5
  %temp189 = load i8*, i8** %207
  %208 = getelementptr i8*, i8** %112, i32 8
  store i8* %temp189, i8** %208
  %209 = getelementptr i8*, i8** %112, i32 0
  %temp190 = load i8*, i8** %209
  %210 = getelementptr i8*, i8** %105, i32 3
  store i8* %temp190, i8** %210
  %malloccall191 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 9))
  %211 = bitcast i8* %malloccall191 to i8**
  %str_array192 = load i8**, i8*** %str_array
  %212 = getelementptr i8*, i8** %str_array192, i32 0
  %temp193 = load i8*, i8** %212
  %213 = getelementptr i8*, i8** %211, i32 0
  store i8* %temp193, i8** %213
  %str_array194 = load i8**, i8*** %str_array
  %214 = getelementptr i8*, i8** %str_array194, i32 1
  %temp195 = load i8*, i8** %214
  %215 = getelementptr i8*, i8** %211, i32 1
  store i8* %temp195, i8** %215
  %str_array196 = load i8**, i8*** %str_array
  %216 = getelementptr i8*, i8** %str_array196, i32 2
  %temp197 = load i8*, i8** %216
  %217 = getelementptr i8*, i8** %211, i32 2
  store i8* %temp197, i8** %217
  %malloccall198 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %218 = bitcast i8* %malloccall198 to i8**
  %str_array199 = load i8**, i8*** %str_array
  %219 = getelementptr i8*, i8** %str_array199, i32 0
  %temp200 = load i8*, i8** %219
  %220 = getelementptr i8*, i8** %218, i32 0
  store i8* %temp200, i8** %220
  %str_array201 = load i8**, i8*** %str_array
  %221 = getelementptr i8*, i8** %str_array201, i32 1
  %temp202 = load i8*, i8** %221
  %222 = getelementptr i8*, i8** %218, i32 1
  store i8* %temp202, i8** %222
  %str_array203 = load i8**, i8*** %str_array
  %223 = getelementptr i8*, i8** %str_array203, i32 2
  %temp204 = load i8*, i8** %223
  %224 = getelementptr i8*, i8** %218, i32 2
  store i8* %temp204, i8** %224
  %str_array205 = load i8**, i8*** %str_array
  %225 = getelementptr i8*, i8** %str_array205, i32 0
  %temp206 = load i8*, i8** %225
  %226 = getelementptr i8*, i8** %218, i32 3
  store i8* %temp206, i8** %226
  %str_array207 = load i8**, i8*** %str_array
  %227 = getelementptr i8*, i8** %str_array207, i32 1
  %temp208 = load i8*, i8** %227
  %228 = getelementptr i8*, i8** %218, i32 4
  store i8* %temp208, i8** %228
  %str_array209 = load i8**, i8*** %str_array
  %229 = getelementptr i8*, i8** %str_array209, i32 2
  %temp210 = load i8*, i8** %229
  %230 = getelementptr i8*, i8** %218, i32 5
  store i8* %temp210, i8** %230
  %231 = getelementptr i8*, i8** %218, i32 0
  %temp211 = load i8*, i8** %231
  %232 = getelementptr i8*, i8** %211, i32 3
  store i8* %temp211, i8** %232
  %malloccall212 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %233 = bitcast i8* %malloccall212 to i8**
  %str_array213 = load i8**, i8*** %str_array
  %234 = getelementptr i8*, i8** %str_array213, i32 0
  %temp214 = load i8*, i8** %234
  %235 = getelementptr i8*, i8** %233, i32 0
  store i8* %temp214, i8** %235
  %str_array215 = load i8**, i8*** %str_array
  %236 = getelementptr i8*, i8** %str_array215, i32 1
  %temp216 = load i8*, i8** %236
  %237 = getelementptr i8*, i8** %233, i32 1
  store i8* %temp216, i8** %237
  %str_array217 = load i8**, i8*** %str_array
  %238 = getelementptr i8*, i8** %str_array217, i32 2
  %temp218 = load i8*, i8** %238
  %239 = getelementptr i8*, i8** %233, i32 2
  store i8* %temp218, i8** %239
  %str_array219 = load i8**, i8*** %str_array
  %240 = getelementptr i8*, i8** %str_array219, i32 0
  %temp220 = load i8*, i8** %240
  %241 = getelementptr i8*, i8** %233, i32 3
  store i8* %temp220, i8** %241
  %str_array221 = load i8**, i8*** %str_array
  %242 = getelementptr i8*, i8** %str_array221, i32 1
  %temp222 = load i8*, i8** %242
  %243 = getelementptr i8*, i8** %233, i32 4
  store i8* %temp222, i8** %243
  %str_array223 = load i8**, i8*** %str_array
  %244 = getelementptr i8*, i8** %str_array223, i32 2
  %temp224 = load i8*, i8** %244
  %245 = getelementptr i8*, i8** %233, i32 5
  store i8* %temp224, i8** %245
  %246 = getelementptr i8*, i8** %233, i32 1
  %temp225 = load i8*, i8** %246
  %247 = getelementptr i8*, i8** %211, i32 4
  store i8* %temp225, i8** %247
  %malloccall226 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %248 = bitcast i8* %malloccall226 to i8**
  %str_array227 = load i8**, i8*** %str_array
  %249 = getelementptr i8*, i8** %str_array227, i32 0
  %temp228 = load i8*, i8** %249
  %250 = getelementptr i8*, i8** %248, i32 0
  store i8* %temp228, i8** %250
  %str_array229 = load i8**, i8*** %str_array
  %251 = getelementptr i8*, i8** %str_array229, i32 1
  %temp230 = load i8*, i8** %251
  %252 = getelementptr i8*, i8** %248, i32 1
  store i8* %temp230, i8** %252
  %str_array231 = load i8**, i8*** %str_array
  %253 = getelementptr i8*, i8** %str_array231, i32 2
  %temp232 = load i8*, i8** %253
  %254 = getelementptr i8*, i8** %248, i32 2
  store i8* %temp232, i8** %254
  %str_array233 = load i8**, i8*** %str_array
  %255 = getelementptr i8*, i8** %str_array233, i32 0
  %temp234 = load i8*, i8** %255
  %256 = getelementptr i8*, i8** %248, i32 3
  store i8* %temp234, i8** %256
  %str_array235 = load i8**, i8*** %str_array
  %257 = getelementptr i8*, i8** %str_array235, i32 1
  %temp236 = load i8*, i8** %257
  %258 = getelementptr i8*, i8** %248, i32 4
  store i8* %temp236, i8** %258
  %str_array237 = load i8**, i8*** %str_array
  %259 = getelementptr i8*, i8** %str_array237, i32 2
  %temp238 = load i8*, i8** %259
  %260 = getelementptr i8*, i8** %248, i32 5
  store i8* %temp238, i8** %260
  %261 = getelementptr i8*, i8** %248, i32 2
  %temp239 = load i8*, i8** %261
  %262 = getelementptr i8*, i8** %211, i32 5
  store i8* %temp239, i8** %262
  %malloccall240 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %263 = bitcast i8* %malloccall240 to i8**
  %str_array241 = load i8**, i8*** %str_array
  %264 = getelementptr i8*, i8** %str_array241, i32 0
  %temp242 = load i8*, i8** %264
  %265 = getelementptr i8*, i8** %263, i32 0
  store i8* %temp242, i8** %265
  %str_array243 = load i8**, i8*** %str_array
  %266 = getelementptr i8*, i8** %str_array243, i32 1
  %temp244 = load i8*, i8** %266
  %267 = getelementptr i8*, i8** %263, i32 1
  store i8* %temp244, i8** %267
  %str_array245 = load i8**, i8*** %str_array
  %268 = getelementptr i8*, i8** %str_array245, i32 2
  %temp246 = load i8*, i8** %268
  %269 = getelementptr i8*, i8** %263, i32 2
  store i8* %temp246, i8** %269
  %str_array247 = load i8**, i8*** %str_array
  %270 = getelementptr i8*, i8** %str_array247, i32 0
  %temp248 = load i8*, i8** %270
  %271 = getelementptr i8*, i8** %263, i32 3
  store i8* %temp248, i8** %271
  %str_array249 = load i8**, i8*** %str_array
  %272 = getelementptr i8*, i8** %str_array249, i32 1
  %temp250 = load i8*, i8** %272
  %273 = getelementptr i8*, i8** %263, i32 4
  store i8* %temp250, i8** %273
  %str_array251 = load i8**, i8*** %str_array
  %274 = getelementptr i8*, i8** %str_array251, i32 2
  %temp252 = load i8*, i8** %274
  %275 = getelementptr i8*, i8** %263, i32 5
  store i8* %temp252, i8** %275
  %276 = getelementptr i8*, i8** %263, i32 3
  %temp253 = load i8*, i8** %276
  %277 = getelementptr i8*, i8** %211, i32 6
  store i8* %temp253, i8** %277
  %malloccall254 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %278 = bitcast i8* %malloccall254 to i8**
  %str_array255 = load i8**, i8*** %str_array
  %279 = getelementptr i8*, i8** %str_array255, i32 0
  %temp256 = load i8*, i8** %279
  %280 = getelementptr i8*, i8** %278, i32 0
  store i8* %temp256, i8** %280
  %str_array257 = load i8**, i8*** %str_array
  %281 = getelementptr i8*, i8** %str_array257, i32 1
  %temp258 = load i8*, i8** %281
  %282 = getelementptr i8*, i8** %278, i32 1
  store i8* %temp258, i8** %282
  %str_array259 = load i8**, i8*** %str_array
  %283 = getelementptr i8*, i8** %str_array259, i32 2
  %temp260 = load i8*, i8** %283
  %284 = getelementptr i8*, i8** %278, i32 2
  store i8* %temp260, i8** %284
  %str_array261 = load i8**, i8*** %str_array
  %285 = getelementptr i8*, i8** %str_array261, i32 0
  %temp262 = load i8*, i8** %285
  %286 = getelementptr i8*, i8** %278, i32 3
  store i8* %temp262, i8** %286
  %str_array263 = load i8**, i8*** %str_array
  %287 = getelementptr i8*, i8** %str_array263, i32 1
  %temp264 = load i8*, i8** %287
  %288 = getelementptr i8*, i8** %278, i32 4
  store i8* %temp264, i8** %288
  %str_array265 = load i8**, i8*** %str_array
  %289 = getelementptr i8*, i8** %str_array265, i32 2
  %temp266 = load i8*, i8** %289
  %290 = getelementptr i8*, i8** %278, i32 5
  store i8* %temp266, i8** %290
  %291 = getelementptr i8*, i8** %278, i32 4
  %temp267 = load i8*, i8** %291
  %292 = getelementptr i8*, i8** %211, i32 7
  store i8* %temp267, i8** %292
  %malloccall268 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %293 = bitcast i8* %malloccall268 to i8**
  %str_array269 = load i8**, i8*** %str_array
  %294 = getelementptr i8*, i8** %str_array269, i32 0
  %temp270 = load i8*, i8** %294
  %295 = getelementptr i8*, i8** %293, i32 0
  store i8* %temp270, i8** %295
  %str_array271 = load i8**, i8*** %str_array
  %296 = getelementptr i8*, i8** %str_array271, i32 1
  %temp272 = load i8*, i8** %296
  %297 = getelementptr i8*, i8** %293, i32 1
  store i8* %temp272, i8** %297
  %str_array273 = load i8**, i8*** %str_array
  %298 = getelementptr i8*, i8** %str_array273, i32 2
  %temp274 = load i8*, i8** %298
  %299 = getelementptr i8*, i8** %293, i32 2
  store i8* %temp274, i8** %299
  %str_array275 = load i8**, i8*** %str_array
  %300 = getelementptr i8*, i8** %str_array275, i32 0
  %temp276 = load i8*, i8** %300
  %301 = getelementptr i8*, i8** %293, i32 3
  store i8* %temp276, i8** %301
  %str_array277 = load i8**, i8*** %str_array
  %302 = getelementptr i8*, i8** %str_array277, i32 1
  %temp278 = load i8*, i8** %302
  %303 = getelementptr i8*, i8** %293, i32 4
  store i8* %temp278, i8** %303
  %str_array279 = load i8**, i8*** %str_array
  %304 = getelementptr i8*, i8** %str_array279, i32 2
  %temp280 = load i8*, i8** %304
  %305 = getelementptr i8*, i8** %293, i32 5
  store i8* %temp280, i8** %305
  %306 = getelementptr i8*, i8** %293, i32 5
  %temp281 = load i8*, i8** %306
  %307 = getelementptr i8*, i8** %211, i32 8
  store i8* %temp281, i8** %307
  %308 = getelementptr i8*, i8** %211, i32 1
  %temp282 = load i8*, i8** %308
  %309 = getelementptr i8*, i8** %105, i32 4
  store i8* %temp282, i8** %309
  %malloccall283 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 9))
  %310 = bitcast i8* %malloccall283 to i8**
  %str_array284 = load i8**, i8*** %str_array
  %311 = getelementptr i8*, i8** %str_array284, i32 0
  %temp285 = load i8*, i8** %311
  %312 = getelementptr i8*, i8** %310, i32 0
  store i8* %temp285, i8** %312
  %str_array286 = load i8**, i8*** %str_array
  %313 = getelementptr i8*, i8** %str_array286, i32 1
  %temp287 = load i8*, i8** %313
  %314 = getelementptr i8*, i8** %310, i32 1
  store i8* %temp287, i8** %314
  %str_array288 = load i8**, i8*** %str_array
  %315 = getelementptr i8*, i8** %str_array288, i32 2
  %temp289 = load i8*, i8** %315
  %316 = getelementptr i8*, i8** %310, i32 2
  store i8* %temp289, i8** %316
  %malloccall290 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %317 = bitcast i8* %malloccall290 to i8**
  %str_array291 = load i8**, i8*** %str_array
  %318 = getelementptr i8*, i8** %str_array291, i32 0
  %temp292 = load i8*, i8** %318
  %319 = getelementptr i8*, i8** %317, i32 0
  store i8* %temp292, i8** %319
  %str_array293 = load i8**, i8*** %str_array
  %320 = getelementptr i8*, i8** %str_array293, i32 1
  %temp294 = load i8*, i8** %320
  %321 = getelementptr i8*, i8** %317, i32 1
  store i8* %temp294, i8** %321
  %str_array295 = load i8**, i8*** %str_array
  %322 = getelementptr i8*, i8** %str_array295, i32 2
  %temp296 = load i8*, i8** %322
  %323 = getelementptr i8*, i8** %317, i32 2
  store i8* %temp296, i8** %323
  %str_array297 = load i8**, i8*** %str_array
  %324 = getelementptr i8*, i8** %str_array297, i32 0
  %temp298 = load i8*, i8** %324
  %325 = getelementptr i8*, i8** %317, i32 3
  store i8* %temp298, i8** %325
  %str_array299 = load i8**, i8*** %str_array
  %326 = getelementptr i8*, i8** %str_array299, i32 1
  %temp300 = load i8*, i8** %326
  %327 = getelementptr i8*, i8** %317, i32 4
  store i8* %temp300, i8** %327
  %str_array301 = load i8**, i8*** %str_array
  %328 = getelementptr i8*, i8** %str_array301, i32 2
  %temp302 = load i8*, i8** %328
  %329 = getelementptr i8*, i8** %317, i32 5
  store i8* %temp302, i8** %329
  %330 = getelementptr i8*, i8** %317, i32 0
  %temp303 = load i8*, i8** %330
  %331 = getelementptr i8*, i8** %310, i32 3
  store i8* %temp303, i8** %331
  %malloccall304 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %332 = bitcast i8* %malloccall304 to i8**
  %str_array305 = load i8**, i8*** %str_array
  %333 = getelementptr i8*, i8** %str_array305, i32 0
  %temp306 = load i8*, i8** %333
  %334 = getelementptr i8*, i8** %332, i32 0
  store i8* %temp306, i8** %334
  %str_array307 = load i8**, i8*** %str_array
  %335 = getelementptr i8*, i8** %str_array307, i32 1
  %temp308 = load i8*, i8** %335
  %336 = getelementptr i8*, i8** %332, i32 1
  store i8* %temp308, i8** %336
  %str_array309 = load i8**, i8*** %str_array
  %337 = getelementptr i8*, i8** %str_array309, i32 2
  %temp310 = load i8*, i8** %337
  %338 = getelementptr i8*, i8** %332, i32 2
  store i8* %temp310, i8** %338
  %str_array311 = load i8**, i8*** %str_array
  %339 = getelementptr i8*, i8** %str_array311, i32 0
  %temp312 = load i8*, i8** %339
  %340 = getelementptr i8*, i8** %332, i32 3
  store i8* %temp312, i8** %340
  %str_array313 = load i8**, i8*** %str_array
  %341 = getelementptr i8*, i8** %str_array313, i32 1
  %temp314 = load i8*, i8** %341
  %342 = getelementptr i8*, i8** %332, i32 4
  store i8* %temp314, i8** %342
  %str_array315 = load i8**, i8*** %str_array
  %343 = getelementptr i8*, i8** %str_array315, i32 2
  %temp316 = load i8*, i8** %343
  %344 = getelementptr i8*, i8** %332, i32 5
  store i8* %temp316, i8** %344
  %345 = getelementptr i8*, i8** %332, i32 1
  %temp317 = load i8*, i8** %345
  %346 = getelementptr i8*, i8** %310, i32 4
  store i8* %temp317, i8** %346
  %malloccall318 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %347 = bitcast i8* %malloccall318 to i8**
  %str_array319 = load i8**, i8*** %str_array
  %348 = getelementptr i8*, i8** %str_array319, i32 0
  %temp320 = load i8*, i8** %348
  %349 = getelementptr i8*, i8** %347, i32 0
  store i8* %temp320, i8** %349
  %str_array321 = load i8**, i8*** %str_array
  %350 = getelementptr i8*, i8** %str_array321, i32 1
  %temp322 = load i8*, i8** %350
  %351 = getelementptr i8*, i8** %347, i32 1
  store i8* %temp322, i8** %351
  %str_array323 = load i8**, i8*** %str_array
  %352 = getelementptr i8*, i8** %str_array323, i32 2
  %temp324 = load i8*, i8** %352
  %353 = getelementptr i8*, i8** %347, i32 2
  store i8* %temp324, i8** %353
  %str_array325 = load i8**, i8*** %str_array
  %354 = getelementptr i8*, i8** %str_array325, i32 0
  %temp326 = load i8*, i8** %354
  %355 = getelementptr i8*, i8** %347, i32 3
  store i8* %temp326, i8** %355
  %str_array327 = load i8**, i8*** %str_array
  %356 = getelementptr i8*, i8** %str_array327, i32 1
  %temp328 = load i8*, i8** %356
  %357 = getelementptr i8*, i8** %347, i32 4
  store i8* %temp328, i8** %357
  %str_array329 = load i8**, i8*** %str_array
  %358 = getelementptr i8*, i8** %str_array329, i32 2
  %temp330 = load i8*, i8** %358
  %359 = getelementptr i8*, i8** %347, i32 5
  store i8* %temp330, i8** %359
  %360 = getelementptr i8*, i8** %347, i32 2
  %temp331 = load i8*, i8** %360
  %361 = getelementptr i8*, i8** %310, i32 5
  store i8* %temp331, i8** %361
  %malloccall332 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %362 = bitcast i8* %malloccall332 to i8**
  %str_array333 = load i8**, i8*** %str_array
  %363 = getelementptr i8*, i8** %str_array333, i32 0
  %temp334 = load i8*, i8** %363
  %364 = getelementptr i8*, i8** %362, i32 0
  store i8* %temp334, i8** %364
  %str_array335 = load i8**, i8*** %str_array
  %365 = getelementptr i8*, i8** %str_array335, i32 1
  %temp336 = load i8*, i8** %365
  %366 = getelementptr i8*, i8** %362, i32 1
  store i8* %temp336, i8** %366
  %str_array337 = load i8**, i8*** %str_array
  %367 = getelementptr i8*, i8** %str_array337, i32 2
  %temp338 = load i8*, i8** %367
  %368 = getelementptr i8*, i8** %362, i32 2
  store i8* %temp338, i8** %368
  %str_array339 = load i8**, i8*** %str_array
  %369 = getelementptr i8*, i8** %str_array339, i32 0
  %temp340 = load i8*, i8** %369
  %370 = getelementptr i8*, i8** %362, i32 3
  store i8* %temp340, i8** %370
  %str_array341 = load i8**, i8*** %str_array
  %371 = getelementptr i8*, i8** %str_array341, i32 1
  %temp342 = load i8*, i8** %371
  %372 = getelementptr i8*, i8** %362, i32 4
  store i8* %temp342, i8** %372
  %str_array343 = load i8**, i8*** %str_array
  %373 = getelementptr i8*, i8** %str_array343, i32 2
  %temp344 = load i8*, i8** %373
  %374 = getelementptr i8*, i8** %362, i32 5
  store i8* %temp344, i8** %374
  %375 = getelementptr i8*, i8** %362, i32 3
  %temp345 = load i8*, i8** %375
  %376 = getelementptr i8*, i8** %310, i32 6
  store i8* %temp345, i8** %376
  %malloccall346 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %377 = bitcast i8* %malloccall346 to i8**
  %str_array347 = load i8**, i8*** %str_array
  %378 = getelementptr i8*, i8** %str_array347, i32 0
  %temp348 = load i8*, i8** %378
  %379 = getelementptr i8*, i8** %377, i32 0
  store i8* %temp348, i8** %379
  %str_array349 = load i8**, i8*** %str_array
  %380 = getelementptr i8*, i8** %str_array349, i32 1
  %temp350 = load i8*, i8** %380
  %381 = getelementptr i8*, i8** %377, i32 1
  store i8* %temp350, i8** %381
  %str_array351 = load i8**, i8*** %str_array
  %382 = getelementptr i8*, i8** %str_array351, i32 2
  %temp352 = load i8*, i8** %382
  %383 = getelementptr i8*, i8** %377, i32 2
  store i8* %temp352, i8** %383
  %str_array353 = load i8**, i8*** %str_array
  %384 = getelementptr i8*, i8** %str_array353, i32 0
  %temp354 = load i8*, i8** %384
  %385 = getelementptr i8*, i8** %377, i32 3
  store i8* %temp354, i8** %385
  %str_array355 = load i8**, i8*** %str_array
  %386 = getelementptr i8*, i8** %str_array355, i32 1
  %temp356 = load i8*, i8** %386
  %387 = getelementptr i8*, i8** %377, i32 4
  store i8* %temp356, i8** %387
  %str_array357 = load i8**, i8*** %str_array
  %388 = getelementptr i8*, i8** %str_array357, i32 2
  %temp358 = load i8*, i8** %388
  %389 = getelementptr i8*, i8** %377, i32 5
  store i8* %temp358, i8** %389
  %390 = getelementptr i8*, i8** %377, i32 4
  %temp359 = load i8*, i8** %390
  %391 = getelementptr i8*, i8** %310, i32 7
  store i8* %temp359, i8** %391
  %malloccall360 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %392 = bitcast i8* %malloccall360 to i8**
  %str_array361 = load i8**, i8*** %str_array
  %393 = getelementptr i8*, i8** %str_array361, i32 0
  %temp362 = load i8*, i8** %393
  %394 = getelementptr i8*, i8** %392, i32 0
  store i8* %temp362, i8** %394
  %str_array363 = load i8**, i8*** %str_array
  %395 = getelementptr i8*, i8** %str_array363, i32 1
  %temp364 = load i8*, i8** %395
  %396 = getelementptr i8*, i8** %392, i32 1
  store i8* %temp364, i8** %396
  %str_array365 = load i8**, i8*** %str_array
  %397 = getelementptr i8*, i8** %str_array365, i32 2
  %temp366 = load i8*, i8** %397
  %398 = getelementptr i8*, i8** %392, i32 2
  store i8* %temp366, i8** %398
  %str_array367 = load i8**, i8*** %str_array
  %399 = getelementptr i8*, i8** %str_array367, i32 0
  %temp368 = load i8*, i8** %399
  %400 = getelementptr i8*, i8** %392, i32 3
  store i8* %temp368, i8** %400
  %str_array369 = load i8**, i8*** %str_array
  %401 = getelementptr i8*, i8** %str_array369, i32 1
  %temp370 = load i8*, i8** %401
  %402 = getelementptr i8*, i8** %392, i32 4
  store i8* %temp370, i8** %402
  %str_array371 = load i8**, i8*** %str_array
  %403 = getelementptr i8*, i8** %str_array371, i32 2
  %temp372 = load i8*, i8** %403
  %404 = getelementptr i8*, i8** %392, i32 5
  store i8* %temp372, i8** %404
  %405 = getelementptr i8*, i8** %392, i32 5
  %temp373 = load i8*, i8** %405
  %406 = getelementptr i8*, i8** %310, i32 8
  store i8* %temp373, i8** %406
  %407 = getelementptr i8*, i8** %310, i32 2
  %temp374 = load i8*, i8** %407
  %408 = getelementptr i8*, i8** %105, i32 5
  store i8* %temp374, i8** %408
  %malloccall375 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 9))
  %409 = bitcast i8* %malloccall375 to i8**
  %str_array376 = load i8**, i8*** %str_array
  %410 = getelementptr i8*, i8** %str_array376, i32 0
  %temp377 = load i8*, i8** %410
  %411 = getelementptr i8*, i8** %409, i32 0
  store i8* %temp377, i8** %411
  %str_array378 = load i8**, i8*** %str_array
  %412 = getelementptr i8*, i8** %str_array378, i32 1
  %temp379 = load i8*, i8** %412
  %413 = getelementptr i8*, i8** %409, i32 1
  store i8* %temp379, i8** %413
  %str_array380 = load i8**, i8*** %str_array
  %414 = getelementptr i8*, i8** %str_array380, i32 2
  %temp381 = load i8*, i8** %414
  %415 = getelementptr i8*, i8** %409, i32 2
  store i8* %temp381, i8** %415
  %malloccall382 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %416 = bitcast i8* %malloccall382 to i8**
  %str_array383 = load i8**, i8*** %str_array
  %417 = getelementptr i8*, i8** %str_array383, i32 0
  %temp384 = load i8*, i8** %417
  %418 = getelementptr i8*, i8** %416, i32 0
  store i8* %temp384, i8** %418
  %str_array385 = load i8**, i8*** %str_array
  %419 = getelementptr i8*, i8** %str_array385, i32 1
  %temp386 = load i8*, i8** %419
  %420 = getelementptr i8*, i8** %416, i32 1
  store i8* %temp386, i8** %420
  %str_array387 = load i8**, i8*** %str_array
  %421 = getelementptr i8*, i8** %str_array387, i32 2
  %temp388 = load i8*, i8** %421
  %422 = getelementptr i8*, i8** %416, i32 2
  store i8* %temp388, i8** %422
  %str_array389 = load i8**, i8*** %str_array
  %423 = getelementptr i8*, i8** %str_array389, i32 0
  %temp390 = load i8*, i8** %423
  %424 = getelementptr i8*, i8** %416, i32 3
  store i8* %temp390, i8** %424
  %str_array391 = load i8**, i8*** %str_array
  %425 = getelementptr i8*, i8** %str_array391, i32 1
  %temp392 = load i8*, i8** %425
  %426 = getelementptr i8*, i8** %416, i32 4
  store i8* %temp392, i8** %426
  %str_array393 = load i8**, i8*** %str_array
  %427 = getelementptr i8*, i8** %str_array393, i32 2
  %temp394 = load i8*, i8** %427
  %428 = getelementptr i8*, i8** %416, i32 5
  store i8* %temp394, i8** %428
  %429 = getelementptr i8*, i8** %416, i32 0
  %temp395 = load i8*, i8** %429
  %430 = getelementptr i8*, i8** %409, i32 3
  store i8* %temp395, i8** %430
  %malloccall396 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %431 = bitcast i8* %malloccall396 to i8**
  %str_array397 = load i8**, i8*** %str_array
  %432 = getelementptr i8*, i8** %str_array397, i32 0
  %temp398 = load i8*, i8** %432
  %433 = getelementptr i8*, i8** %431, i32 0
  store i8* %temp398, i8** %433
  %str_array399 = load i8**, i8*** %str_array
  %434 = getelementptr i8*, i8** %str_array399, i32 1
  %temp400 = load i8*, i8** %434
  %435 = getelementptr i8*, i8** %431, i32 1
  store i8* %temp400, i8** %435
  %str_array401 = load i8**, i8*** %str_array
  %436 = getelementptr i8*, i8** %str_array401, i32 2
  %temp402 = load i8*, i8** %436
  %437 = getelementptr i8*, i8** %431, i32 2
  store i8* %temp402, i8** %437
  %str_array403 = load i8**, i8*** %str_array
  %438 = getelementptr i8*, i8** %str_array403, i32 0
  %temp404 = load i8*, i8** %438
  %439 = getelementptr i8*, i8** %431, i32 3
  store i8* %temp404, i8** %439
  %str_array405 = load i8**, i8*** %str_array
  %440 = getelementptr i8*, i8** %str_array405, i32 1
  %temp406 = load i8*, i8** %440
  %441 = getelementptr i8*, i8** %431, i32 4
  store i8* %temp406, i8** %441
  %str_array407 = load i8**, i8*** %str_array
  %442 = getelementptr i8*, i8** %str_array407, i32 2
  %temp408 = load i8*, i8** %442
  %443 = getelementptr i8*, i8** %431, i32 5
  store i8* %temp408, i8** %443
  %444 = getelementptr i8*, i8** %431, i32 1
  %temp409 = load i8*, i8** %444
  %445 = getelementptr i8*, i8** %409, i32 4
  store i8* %temp409, i8** %445
  %malloccall410 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %446 = bitcast i8* %malloccall410 to i8**
  %str_array411 = load i8**, i8*** %str_array
  %447 = getelementptr i8*, i8** %str_array411, i32 0
  %temp412 = load i8*, i8** %447
  %448 = getelementptr i8*, i8** %446, i32 0
  store i8* %temp412, i8** %448
  %str_array413 = load i8**, i8*** %str_array
  %449 = getelementptr i8*, i8** %str_array413, i32 1
  %temp414 = load i8*, i8** %449
  %450 = getelementptr i8*, i8** %446, i32 1
  store i8* %temp414, i8** %450
  %str_array415 = load i8**, i8*** %str_array
  %451 = getelementptr i8*, i8** %str_array415, i32 2
  %temp416 = load i8*, i8** %451
  %452 = getelementptr i8*, i8** %446, i32 2
  store i8* %temp416, i8** %452
  %str_array417 = load i8**, i8*** %str_array
  %453 = getelementptr i8*, i8** %str_array417, i32 0
  %temp418 = load i8*, i8** %453
  %454 = getelementptr i8*, i8** %446, i32 3
  store i8* %temp418, i8** %454
  %str_array419 = load i8**, i8*** %str_array
  %455 = getelementptr i8*, i8** %str_array419, i32 1
  %temp420 = load i8*, i8** %455
  %456 = getelementptr i8*, i8** %446, i32 4
  store i8* %temp420, i8** %456
  %str_array421 = load i8**, i8*** %str_array
  %457 = getelementptr i8*, i8** %str_array421, i32 2
  %temp422 = load i8*, i8** %457
  %458 = getelementptr i8*, i8** %446, i32 5
  store i8* %temp422, i8** %458
  %459 = getelementptr i8*, i8** %446, i32 2
  %temp423 = load i8*, i8** %459
  %460 = getelementptr i8*, i8** %409, i32 5
  store i8* %temp423, i8** %460
  %malloccall424 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %461 = bitcast i8* %malloccall424 to i8**
  %str_array425 = load i8**, i8*** %str_array
  %462 = getelementptr i8*, i8** %str_array425, i32 0
  %temp426 = load i8*, i8** %462
  %463 = getelementptr i8*, i8** %461, i32 0
  store i8* %temp426, i8** %463
  %str_array427 = load i8**, i8*** %str_array
  %464 = getelementptr i8*, i8** %str_array427, i32 1
  %temp428 = load i8*, i8** %464
  %465 = getelementptr i8*, i8** %461, i32 1
  store i8* %temp428, i8** %465
  %str_array429 = load i8**, i8*** %str_array
  %466 = getelementptr i8*, i8** %str_array429, i32 2
  %temp430 = load i8*, i8** %466
  %467 = getelementptr i8*, i8** %461, i32 2
  store i8* %temp430, i8** %467
  %str_array431 = load i8**, i8*** %str_array
  %468 = getelementptr i8*, i8** %str_array431, i32 0
  %temp432 = load i8*, i8** %468
  %469 = getelementptr i8*, i8** %461, i32 3
  store i8* %temp432, i8** %469
  %str_array433 = load i8**, i8*** %str_array
  %470 = getelementptr i8*, i8** %str_array433, i32 1
  %temp434 = load i8*, i8** %470
  %471 = getelementptr i8*, i8** %461, i32 4
  store i8* %temp434, i8** %471
  %str_array435 = load i8**, i8*** %str_array
  %472 = getelementptr i8*, i8** %str_array435, i32 2
  %temp436 = load i8*, i8** %472
  %473 = getelementptr i8*, i8** %461, i32 5
  store i8* %temp436, i8** %473
  %474 = getelementptr i8*, i8** %461, i32 3
  %temp437 = load i8*, i8** %474
  %475 = getelementptr i8*, i8** %409, i32 6
  store i8* %temp437, i8** %475
  %malloccall438 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %476 = bitcast i8* %malloccall438 to i8**
  %str_array439 = load i8**, i8*** %str_array
  %477 = getelementptr i8*, i8** %str_array439, i32 0
  %temp440 = load i8*, i8** %477
  %478 = getelementptr i8*, i8** %476, i32 0
  store i8* %temp440, i8** %478
  %str_array441 = load i8**, i8*** %str_array
  %479 = getelementptr i8*, i8** %str_array441, i32 1
  %temp442 = load i8*, i8** %479
  %480 = getelementptr i8*, i8** %476, i32 1
  store i8* %temp442, i8** %480
  %str_array443 = load i8**, i8*** %str_array
  %481 = getelementptr i8*, i8** %str_array443, i32 2
  %temp444 = load i8*, i8** %481
  %482 = getelementptr i8*, i8** %476, i32 2
  store i8* %temp444, i8** %482
  %str_array445 = load i8**, i8*** %str_array
  %483 = getelementptr i8*, i8** %str_array445, i32 0
  %temp446 = load i8*, i8** %483
  %484 = getelementptr i8*, i8** %476, i32 3
  store i8* %temp446, i8** %484
  %str_array447 = load i8**, i8*** %str_array
  %485 = getelementptr i8*, i8** %str_array447, i32 1
  %temp448 = load i8*, i8** %485
  %486 = getelementptr i8*, i8** %476, i32 4
  store i8* %temp448, i8** %486
  %str_array449 = load i8**, i8*** %str_array
  %487 = getelementptr i8*, i8** %str_array449, i32 2
  %temp450 = load i8*, i8** %487
  %488 = getelementptr i8*, i8** %476, i32 5
  store i8* %temp450, i8** %488
  %489 = getelementptr i8*, i8** %476, i32 4
  %temp451 = load i8*, i8** %489
  %490 = getelementptr i8*, i8** %409, i32 7
  store i8* %temp451, i8** %490
  %malloccall452 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %491 = bitcast i8* %malloccall452 to i8**
  %str_array453 = load i8**, i8*** %str_array
  %492 = getelementptr i8*, i8** %str_array453, i32 0
  %temp454 = load i8*, i8** %492
  %493 = getelementptr i8*, i8** %491, i32 0
  store i8* %temp454, i8** %493
  %str_array455 = load i8**, i8*** %str_array
  %494 = getelementptr i8*, i8** %str_array455, i32 1
  %temp456 = load i8*, i8** %494
  %495 = getelementptr i8*, i8** %491, i32 1
  store i8* %temp456, i8** %495
  %str_array457 = load i8**, i8*** %str_array
  %496 = getelementptr i8*, i8** %str_array457, i32 2
  %temp458 = load i8*, i8** %496
  %497 = getelementptr i8*, i8** %491, i32 2
  store i8* %temp458, i8** %497
  %str_array459 = load i8**, i8*** %str_array
  %498 = getelementptr i8*, i8** %str_array459, i32 0
  %temp460 = load i8*, i8** %498
  %499 = getelementptr i8*, i8** %491, i32 3
  store i8* %temp460, i8** %499
  %str_array461 = load i8**, i8*** %str_array
  %500 = getelementptr i8*, i8** %str_array461, i32 1
  %temp462 = load i8*, i8** %500
  %501 = getelementptr i8*, i8** %491, i32 4
  store i8* %temp462, i8** %501
  %str_array463 = load i8**, i8*** %str_array
  %502 = getelementptr i8*, i8** %str_array463, i32 2
  %temp464 = load i8*, i8** %502
  %503 = getelementptr i8*, i8** %491, i32 5
  store i8* %temp464, i8** %503
  %504 = getelementptr i8*, i8** %491, i32 5
  %temp465 = load i8*, i8** %504
  %505 = getelementptr i8*, i8** %409, i32 8
  store i8* %temp465, i8** %505
  %506 = getelementptr i8*, i8** %409, i32 3
  %temp466 = load i8*, i8** %506
  %507 = getelementptr i8*, i8** %105, i32 6
  store i8* %temp466, i8** %507
  %malloccall467 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 9))
  %508 = bitcast i8* %malloccall467 to i8**
  %str_array468 = load i8**, i8*** %str_array
  %509 = getelementptr i8*, i8** %str_array468, i32 0
  %temp469 = load i8*, i8** %509
  %510 = getelementptr i8*, i8** %508, i32 0
  store i8* %temp469, i8** %510
  %str_array470 = load i8**, i8*** %str_array
  %511 = getelementptr i8*, i8** %str_array470, i32 1
  %temp471 = load i8*, i8** %511
  %512 = getelementptr i8*, i8** %508, i32 1
  store i8* %temp471, i8** %512
  %str_array472 = load i8**, i8*** %str_array
  %513 = getelementptr i8*, i8** %str_array472, i32 2
  %temp473 = load i8*, i8** %513
  %514 = getelementptr i8*, i8** %508, i32 2
  store i8* %temp473, i8** %514
  %malloccall474 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %515 = bitcast i8* %malloccall474 to i8**
  %str_array475 = load i8**, i8*** %str_array
  %516 = getelementptr i8*, i8** %str_array475, i32 0
  %temp476 = load i8*, i8** %516
  %517 = getelementptr i8*, i8** %515, i32 0
  store i8* %temp476, i8** %517
  %str_array477 = load i8**, i8*** %str_array
  %518 = getelementptr i8*, i8** %str_array477, i32 1
  %temp478 = load i8*, i8** %518
  %519 = getelementptr i8*, i8** %515, i32 1
  store i8* %temp478, i8** %519
  %str_array479 = load i8**, i8*** %str_array
  %520 = getelementptr i8*, i8** %str_array479, i32 2
  %temp480 = load i8*, i8** %520
  %521 = getelementptr i8*, i8** %515, i32 2
  store i8* %temp480, i8** %521
  %str_array481 = load i8**, i8*** %str_array
  %522 = getelementptr i8*, i8** %str_array481, i32 0
  %temp482 = load i8*, i8** %522
  %523 = getelementptr i8*, i8** %515, i32 3
  store i8* %temp482, i8** %523
  %str_array483 = load i8**, i8*** %str_array
  %524 = getelementptr i8*, i8** %str_array483, i32 1
  %temp484 = load i8*, i8** %524
  %525 = getelementptr i8*, i8** %515, i32 4
  store i8* %temp484, i8** %525
  %str_array485 = load i8**, i8*** %str_array
  %526 = getelementptr i8*, i8** %str_array485, i32 2
  %temp486 = load i8*, i8** %526
  %527 = getelementptr i8*, i8** %515, i32 5
  store i8* %temp486, i8** %527
  %528 = getelementptr i8*, i8** %515, i32 0
  %temp487 = load i8*, i8** %528
  %529 = getelementptr i8*, i8** %508, i32 3
  store i8* %temp487, i8** %529
  %malloccall488 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %530 = bitcast i8* %malloccall488 to i8**
  %str_array489 = load i8**, i8*** %str_array
  %531 = getelementptr i8*, i8** %str_array489, i32 0
  %temp490 = load i8*, i8** %531
  %532 = getelementptr i8*, i8** %530, i32 0
  store i8* %temp490, i8** %532
  %str_array491 = load i8**, i8*** %str_array
  %533 = getelementptr i8*, i8** %str_array491, i32 1
  %temp492 = load i8*, i8** %533
  %534 = getelementptr i8*, i8** %530, i32 1
  store i8* %temp492, i8** %534
  %str_array493 = load i8**, i8*** %str_array
  %535 = getelementptr i8*, i8** %str_array493, i32 2
  %temp494 = load i8*, i8** %535
  %536 = getelementptr i8*, i8** %530, i32 2
  store i8* %temp494, i8** %536
  %str_array495 = load i8**, i8*** %str_array
  %537 = getelementptr i8*, i8** %str_array495, i32 0
  %temp496 = load i8*, i8** %537
  %538 = getelementptr i8*, i8** %530, i32 3
  store i8* %temp496, i8** %538
  %str_array497 = load i8**, i8*** %str_array
  %539 = getelementptr i8*, i8** %str_array497, i32 1
  %temp498 = load i8*, i8** %539
  %540 = getelementptr i8*, i8** %530, i32 4
  store i8* %temp498, i8** %540
  %str_array499 = load i8**, i8*** %str_array
  %541 = getelementptr i8*, i8** %str_array499, i32 2
  %temp500 = load i8*, i8** %541
  %542 = getelementptr i8*, i8** %530, i32 5
  store i8* %temp500, i8** %542
  %543 = getelementptr i8*, i8** %530, i32 1
  %temp501 = load i8*, i8** %543
  %544 = getelementptr i8*, i8** %508, i32 4
  store i8* %temp501, i8** %544
  %malloccall502 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %545 = bitcast i8* %malloccall502 to i8**
  %str_array503 = load i8**, i8*** %str_array
  %546 = getelementptr i8*, i8** %str_array503, i32 0
  %temp504 = load i8*, i8** %546
  %547 = getelementptr i8*, i8** %545, i32 0
  store i8* %temp504, i8** %547
  %str_array505 = load i8**, i8*** %str_array
  %548 = getelementptr i8*, i8** %str_array505, i32 1
  %temp506 = load i8*, i8** %548
  %549 = getelementptr i8*, i8** %545, i32 1
  store i8* %temp506, i8** %549
  %str_array507 = load i8**, i8*** %str_array
  %550 = getelementptr i8*, i8** %str_array507, i32 2
  %temp508 = load i8*, i8** %550
  %551 = getelementptr i8*, i8** %545, i32 2
  store i8* %temp508, i8** %551
  %str_array509 = load i8**, i8*** %str_array
  %552 = getelementptr i8*, i8** %str_array509, i32 0
  %temp510 = load i8*, i8** %552
  %553 = getelementptr i8*, i8** %545, i32 3
  store i8* %temp510, i8** %553
  %str_array511 = load i8**, i8*** %str_array
  %554 = getelementptr i8*, i8** %str_array511, i32 1
  %temp512 = load i8*, i8** %554
  %555 = getelementptr i8*, i8** %545, i32 4
  store i8* %temp512, i8** %555
  %str_array513 = load i8**, i8*** %str_array
  %556 = getelementptr i8*, i8** %str_array513, i32 2
  %temp514 = load i8*, i8** %556
  %557 = getelementptr i8*, i8** %545, i32 5
  store i8* %temp514, i8** %557
  %558 = getelementptr i8*, i8** %545, i32 2
  %temp515 = load i8*, i8** %558
  %559 = getelementptr i8*, i8** %508, i32 5
  store i8* %temp515, i8** %559
  %malloccall516 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %560 = bitcast i8* %malloccall516 to i8**
  %str_array517 = load i8**, i8*** %str_array
  %561 = getelementptr i8*, i8** %str_array517, i32 0
  %temp518 = load i8*, i8** %561
  %562 = getelementptr i8*, i8** %560, i32 0
  store i8* %temp518, i8** %562
  %str_array519 = load i8**, i8*** %str_array
  %563 = getelementptr i8*, i8** %str_array519, i32 1
  %temp520 = load i8*, i8** %563
  %564 = getelementptr i8*, i8** %560, i32 1
  store i8* %temp520, i8** %564
  %str_array521 = load i8**, i8*** %str_array
  %565 = getelementptr i8*, i8** %str_array521, i32 2
  %temp522 = load i8*, i8** %565
  %566 = getelementptr i8*, i8** %560, i32 2
  store i8* %temp522, i8** %566
  %str_array523 = load i8**, i8*** %str_array
  %567 = getelementptr i8*, i8** %str_array523, i32 0
  %temp524 = load i8*, i8** %567
  %568 = getelementptr i8*, i8** %560, i32 3
  store i8* %temp524, i8** %568
  %str_array525 = load i8**, i8*** %str_array
  %569 = getelementptr i8*, i8** %str_array525, i32 1
  %temp526 = load i8*, i8** %569
  %570 = getelementptr i8*, i8** %560, i32 4
  store i8* %temp526, i8** %570
  %str_array527 = load i8**, i8*** %str_array
  %571 = getelementptr i8*, i8** %str_array527, i32 2
  %temp528 = load i8*, i8** %571
  %572 = getelementptr i8*, i8** %560, i32 5
  store i8* %temp528, i8** %572
  %573 = getelementptr i8*, i8** %560, i32 3
  %temp529 = load i8*, i8** %573
  %574 = getelementptr i8*, i8** %508, i32 6
  store i8* %temp529, i8** %574
  %malloccall530 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %575 = bitcast i8* %malloccall530 to i8**
  %str_array531 = load i8**, i8*** %str_array
  %576 = getelementptr i8*, i8** %str_array531, i32 0
  %temp532 = load i8*, i8** %576
  %577 = getelementptr i8*, i8** %575, i32 0
  store i8* %temp532, i8** %577
  %str_array533 = load i8**, i8*** %str_array
  %578 = getelementptr i8*, i8** %str_array533, i32 1
  %temp534 = load i8*, i8** %578
  %579 = getelementptr i8*, i8** %575, i32 1
  store i8* %temp534, i8** %579
  %str_array535 = load i8**, i8*** %str_array
  %580 = getelementptr i8*, i8** %str_array535, i32 2
  %temp536 = load i8*, i8** %580
  %581 = getelementptr i8*, i8** %575, i32 2
  store i8* %temp536, i8** %581
  %str_array537 = load i8**, i8*** %str_array
  %582 = getelementptr i8*, i8** %str_array537, i32 0
  %temp538 = load i8*, i8** %582
  %583 = getelementptr i8*, i8** %575, i32 3
  store i8* %temp538, i8** %583
  %str_array539 = load i8**, i8*** %str_array
  %584 = getelementptr i8*, i8** %str_array539, i32 1
  %temp540 = load i8*, i8** %584
  %585 = getelementptr i8*, i8** %575, i32 4
  store i8* %temp540, i8** %585
  %str_array541 = load i8**, i8*** %str_array
  %586 = getelementptr i8*, i8** %str_array541, i32 2
  %temp542 = load i8*, i8** %586
  %587 = getelementptr i8*, i8** %575, i32 5
  store i8* %temp542, i8** %587
  %588 = getelementptr i8*, i8** %575, i32 4
  %temp543 = load i8*, i8** %588
  %589 = getelementptr i8*, i8** %508, i32 7
  store i8* %temp543, i8** %589
  %malloccall544 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %590 = bitcast i8* %malloccall544 to i8**
  %str_array545 = load i8**, i8*** %str_array
  %591 = getelementptr i8*, i8** %str_array545, i32 0
  %temp546 = load i8*, i8** %591
  %592 = getelementptr i8*, i8** %590, i32 0
  store i8* %temp546, i8** %592
  %str_array547 = load i8**, i8*** %str_array
  %593 = getelementptr i8*, i8** %str_array547, i32 1
  %temp548 = load i8*, i8** %593
  %594 = getelementptr i8*, i8** %590, i32 1
  store i8* %temp548, i8** %594
  %str_array549 = load i8**, i8*** %str_array
  %595 = getelementptr i8*, i8** %str_array549, i32 2
  %temp550 = load i8*, i8** %595
  %596 = getelementptr i8*, i8** %590, i32 2
  store i8* %temp550, i8** %596
  %str_array551 = load i8**, i8*** %str_array
  %597 = getelementptr i8*, i8** %str_array551, i32 0
  %temp552 = load i8*, i8** %597
  %598 = getelementptr i8*, i8** %590, i32 3
  store i8* %temp552, i8** %598
  %str_array553 = load i8**, i8*** %str_array
  %599 = getelementptr i8*, i8** %str_array553, i32 1
  %temp554 = load i8*, i8** %599
  %600 = getelementptr i8*, i8** %590, i32 4
  store i8* %temp554, i8** %600
  %str_array555 = load i8**, i8*** %str_array
  %601 = getelementptr i8*, i8** %str_array555, i32 2
  %temp556 = load i8*, i8** %601
  %602 = getelementptr i8*, i8** %590, i32 5
  store i8* %temp556, i8** %602
  %603 = getelementptr i8*, i8** %590, i32 5
  %temp557 = load i8*, i8** %603
  %604 = getelementptr i8*, i8** %508, i32 8
  store i8* %temp557, i8** %604
  %605 = getelementptr i8*, i8** %508, i32 4
  %temp558 = load i8*, i8** %605
  %606 = getelementptr i8*, i8** %105, i32 7
  store i8* %temp558, i8** %606
  %malloccall559 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 9))
  %607 = bitcast i8* %malloccall559 to i8**
  %str_array560 = load i8**, i8*** %str_array
  %608 = getelementptr i8*, i8** %str_array560, i32 0
  %temp561 = load i8*, i8** %608
  %609 = getelementptr i8*, i8** %607, i32 0
  store i8* %temp561, i8** %609
  %str_array562 = load i8**, i8*** %str_array
  %610 = getelementptr i8*, i8** %str_array562, i32 1
  %temp563 = load i8*, i8** %610
  %611 = getelementptr i8*, i8** %607, i32 1
  store i8* %temp563, i8** %611
  %str_array564 = load i8**, i8*** %str_array
  %612 = getelementptr i8*, i8** %str_array564, i32 2
  %temp565 = load i8*, i8** %612
  %613 = getelementptr i8*, i8** %607, i32 2
  store i8* %temp565, i8** %613
  %malloccall566 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %614 = bitcast i8* %malloccall566 to i8**
  %str_array567 = load i8**, i8*** %str_array
  %615 = getelementptr i8*, i8** %str_array567, i32 0
  %temp568 = load i8*, i8** %615
  %616 = getelementptr i8*, i8** %614, i32 0
  store i8* %temp568, i8** %616
  %str_array569 = load i8**, i8*** %str_array
  %617 = getelementptr i8*, i8** %str_array569, i32 1
  %temp570 = load i8*, i8** %617
  %618 = getelementptr i8*, i8** %614, i32 1
  store i8* %temp570, i8** %618
  %str_array571 = load i8**, i8*** %str_array
  %619 = getelementptr i8*, i8** %str_array571, i32 2
  %temp572 = load i8*, i8** %619
  %620 = getelementptr i8*, i8** %614, i32 2
  store i8* %temp572, i8** %620
  %str_array573 = load i8**, i8*** %str_array
  %621 = getelementptr i8*, i8** %str_array573, i32 0
  %temp574 = load i8*, i8** %621
  %622 = getelementptr i8*, i8** %614, i32 3
  store i8* %temp574, i8** %622
  %str_array575 = load i8**, i8*** %str_array
  %623 = getelementptr i8*, i8** %str_array575, i32 1
  %temp576 = load i8*, i8** %623
  %624 = getelementptr i8*, i8** %614, i32 4
  store i8* %temp576, i8** %624
  %str_array577 = load i8**, i8*** %str_array
  %625 = getelementptr i8*, i8** %str_array577, i32 2
  %temp578 = load i8*, i8** %625
  %626 = getelementptr i8*, i8** %614, i32 5
  store i8* %temp578, i8** %626
  %627 = getelementptr i8*, i8** %614, i32 0
  %temp579 = load i8*, i8** %627
  %628 = getelementptr i8*, i8** %607, i32 3
  store i8* %temp579, i8** %628
  %malloccall580 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %629 = bitcast i8* %malloccall580 to i8**
  %str_array581 = load i8**, i8*** %str_array
  %630 = getelementptr i8*, i8** %str_array581, i32 0
  %temp582 = load i8*, i8** %630
  %631 = getelementptr i8*, i8** %629, i32 0
  store i8* %temp582, i8** %631
  %str_array583 = load i8**, i8*** %str_array
  %632 = getelementptr i8*, i8** %str_array583, i32 1
  %temp584 = load i8*, i8** %632
  %633 = getelementptr i8*, i8** %629, i32 1
  store i8* %temp584, i8** %633
  %str_array585 = load i8**, i8*** %str_array
  %634 = getelementptr i8*, i8** %str_array585, i32 2
  %temp586 = load i8*, i8** %634
  %635 = getelementptr i8*, i8** %629, i32 2
  store i8* %temp586, i8** %635
  %str_array587 = load i8**, i8*** %str_array
  %636 = getelementptr i8*, i8** %str_array587, i32 0
  %temp588 = load i8*, i8** %636
  %637 = getelementptr i8*, i8** %629, i32 3
  store i8* %temp588, i8** %637
  %str_array589 = load i8**, i8*** %str_array
  %638 = getelementptr i8*, i8** %str_array589, i32 1
  %temp590 = load i8*, i8** %638
  %639 = getelementptr i8*, i8** %629, i32 4
  store i8* %temp590, i8** %639
  %str_array591 = load i8**, i8*** %str_array
  %640 = getelementptr i8*, i8** %str_array591, i32 2
  %temp592 = load i8*, i8** %640
  %641 = getelementptr i8*, i8** %629, i32 5
  store i8* %temp592, i8** %641
  %642 = getelementptr i8*, i8** %629, i32 1
  %temp593 = load i8*, i8** %642
  %643 = getelementptr i8*, i8** %607, i32 4
  store i8* %temp593, i8** %643
  %malloccall594 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %644 = bitcast i8* %malloccall594 to i8**
  %str_array595 = load i8**, i8*** %str_array
  %645 = getelementptr i8*, i8** %str_array595, i32 0
  %temp596 = load i8*, i8** %645
  %646 = getelementptr i8*, i8** %644, i32 0
  store i8* %temp596, i8** %646
  %str_array597 = load i8**, i8*** %str_array
  %647 = getelementptr i8*, i8** %str_array597, i32 1
  %temp598 = load i8*, i8** %647
  %648 = getelementptr i8*, i8** %644, i32 1
  store i8* %temp598, i8** %648
  %str_array599 = load i8**, i8*** %str_array
  %649 = getelementptr i8*, i8** %str_array599, i32 2
  %temp600 = load i8*, i8** %649
  %650 = getelementptr i8*, i8** %644, i32 2
  store i8* %temp600, i8** %650
  %str_array601 = load i8**, i8*** %str_array
  %651 = getelementptr i8*, i8** %str_array601, i32 0
  %temp602 = load i8*, i8** %651
  %652 = getelementptr i8*, i8** %644, i32 3
  store i8* %temp602, i8** %652
  %str_array603 = load i8**, i8*** %str_array
  %653 = getelementptr i8*, i8** %str_array603, i32 1
  %temp604 = load i8*, i8** %653
  %654 = getelementptr i8*, i8** %644, i32 4
  store i8* %temp604, i8** %654
  %str_array605 = load i8**, i8*** %str_array
  %655 = getelementptr i8*, i8** %str_array605, i32 2
  %temp606 = load i8*, i8** %655
  %656 = getelementptr i8*, i8** %644, i32 5
  store i8* %temp606, i8** %656
  %657 = getelementptr i8*, i8** %644, i32 2
  %temp607 = load i8*, i8** %657
  %658 = getelementptr i8*, i8** %607, i32 5
  store i8* %temp607, i8** %658
  %malloccall608 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %659 = bitcast i8* %malloccall608 to i8**
  %str_array609 = load i8**, i8*** %str_array
  %660 = getelementptr i8*, i8** %str_array609, i32 0
  %temp610 = load i8*, i8** %660
  %661 = getelementptr i8*, i8** %659, i32 0
  store i8* %temp610, i8** %661
  %str_array611 = load i8**, i8*** %str_array
  %662 = getelementptr i8*, i8** %str_array611, i32 1
  %temp612 = load i8*, i8** %662
  %663 = getelementptr i8*, i8** %659, i32 1
  store i8* %temp612, i8** %663
  %str_array613 = load i8**, i8*** %str_array
  %664 = getelementptr i8*, i8** %str_array613, i32 2
  %temp614 = load i8*, i8** %664
  %665 = getelementptr i8*, i8** %659, i32 2
  store i8* %temp614, i8** %665
  %str_array615 = load i8**, i8*** %str_array
  %666 = getelementptr i8*, i8** %str_array615, i32 0
  %temp616 = load i8*, i8** %666
  %667 = getelementptr i8*, i8** %659, i32 3
  store i8* %temp616, i8** %667
  %str_array617 = load i8**, i8*** %str_array
  %668 = getelementptr i8*, i8** %str_array617, i32 1
  %temp618 = load i8*, i8** %668
  %669 = getelementptr i8*, i8** %659, i32 4
  store i8* %temp618, i8** %669
  %str_array619 = load i8**, i8*** %str_array
  %670 = getelementptr i8*, i8** %str_array619, i32 2
  %temp620 = load i8*, i8** %670
  %671 = getelementptr i8*, i8** %659, i32 5
  store i8* %temp620, i8** %671
  %672 = getelementptr i8*, i8** %659, i32 3
  %temp621 = load i8*, i8** %672
  %673 = getelementptr i8*, i8** %607, i32 6
  store i8* %temp621, i8** %673
  %malloccall622 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %674 = bitcast i8* %malloccall622 to i8**
  %str_array623 = load i8**, i8*** %str_array
  %675 = getelementptr i8*, i8** %str_array623, i32 0
  %temp624 = load i8*, i8** %675
  %676 = getelementptr i8*, i8** %674, i32 0
  store i8* %temp624, i8** %676
  %str_array625 = load i8**, i8*** %str_array
  %677 = getelementptr i8*, i8** %str_array625, i32 1
  %temp626 = load i8*, i8** %677
  %678 = getelementptr i8*, i8** %674, i32 1
  store i8* %temp626, i8** %678
  %str_array627 = load i8**, i8*** %str_array
  %679 = getelementptr i8*, i8** %str_array627, i32 2
  %temp628 = load i8*, i8** %679
  %680 = getelementptr i8*, i8** %674, i32 2
  store i8* %temp628, i8** %680
  %str_array629 = load i8**, i8*** %str_array
  %681 = getelementptr i8*, i8** %str_array629, i32 0
  %temp630 = load i8*, i8** %681
  %682 = getelementptr i8*, i8** %674, i32 3
  store i8* %temp630, i8** %682
  %str_array631 = load i8**, i8*** %str_array
  %683 = getelementptr i8*, i8** %str_array631, i32 1
  %temp632 = load i8*, i8** %683
  %684 = getelementptr i8*, i8** %674, i32 4
  store i8* %temp632, i8** %684
  %str_array633 = load i8**, i8*** %str_array
  %685 = getelementptr i8*, i8** %str_array633, i32 2
  %temp634 = load i8*, i8** %685
  %686 = getelementptr i8*, i8** %674, i32 5
  store i8* %temp634, i8** %686
  %687 = getelementptr i8*, i8** %674, i32 4
  %temp635 = load i8*, i8** %687
  %688 = getelementptr i8*, i8** %607, i32 7
  store i8* %temp635, i8** %688
  %malloccall636 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %689 = bitcast i8* %malloccall636 to i8**
  %str_array637 = load i8**, i8*** %str_array
  %690 = getelementptr i8*, i8** %str_array637, i32 0
  %temp638 = load i8*, i8** %690
  %691 = getelementptr i8*, i8** %689, i32 0
  store i8* %temp638, i8** %691
  %str_array639 = load i8**, i8*** %str_array
  %692 = getelementptr i8*, i8** %str_array639, i32 1
  %temp640 = load i8*, i8** %692
  %693 = getelementptr i8*, i8** %689, i32 1
  store i8* %temp640, i8** %693
  %str_array641 = load i8**, i8*** %str_array
  %694 = getelementptr i8*, i8** %str_array641, i32 2
  %temp642 = load i8*, i8** %694
  %695 = getelementptr i8*, i8** %689, i32 2
  store i8* %temp642, i8** %695
  %str_array643 = load i8**, i8*** %str_array
  %696 = getelementptr i8*, i8** %str_array643, i32 0
  %temp644 = load i8*, i8** %696
  %697 = getelementptr i8*, i8** %689, i32 3
  store i8* %temp644, i8** %697
  %str_array645 = load i8**, i8*** %str_array
  %698 = getelementptr i8*, i8** %str_array645, i32 1
  %temp646 = load i8*, i8** %698
  %699 = getelementptr i8*, i8** %689, i32 4
  store i8* %temp646, i8** %699
  %str_array647 = load i8**, i8*** %str_array
  %700 = getelementptr i8*, i8** %str_array647, i32 2
  %temp648 = load i8*, i8** %700
  %701 = getelementptr i8*, i8** %689, i32 5
  store i8* %temp648, i8** %701
  %702 = getelementptr i8*, i8** %689, i32 5
  %temp649 = load i8*, i8** %702
  %703 = getelementptr i8*, i8** %607, i32 8
  store i8* %temp649, i8** %703
  %704 = getelementptr i8*, i8** %607, i32 5
  %temp650 = load i8*, i8** %704
  %705 = getelementptr i8*, i8** %105, i32 8
  store i8* %temp650, i8** %705
  %malloccall651 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 9))
  %706 = bitcast i8* %malloccall651 to i8**
  %str_array652 = load i8**, i8*** %str_array
  %707 = getelementptr i8*, i8** %str_array652, i32 0
  %temp653 = load i8*, i8** %707
  %708 = getelementptr i8*, i8** %706, i32 0
  store i8* %temp653, i8** %708
  %str_array654 = load i8**, i8*** %str_array
  %709 = getelementptr i8*, i8** %str_array654, i32 1
  %temp655 = load i8*, i8** %709
  %710 = getelementptr i8*, i8** %706, i32 1
  store i8* %temp655, i8** %710
  %str_array656 = load i8**, i8*** %str_array
  %711 = getelementptr i8*, i8** %str_array656, i32 2
  %temp657 = load i8*, i8** %711
  %712 = getelementptr i8*, i8** %706, i32 2
  store i8* %temp657, i8** %712
  %malloccall658 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %713 = bitcast i8* %malloccall658 to i8**
  %str_array659 = load i8**, i8*** %str_array
  %714 = getelementptr i8*, i8** %str_array659, i32 0
  %temp660 = load i8*, i8** %714
  %715 = getelementptr i8*, i8** %713, i32 0
  store i8* %temp660, i8** %715
  %str_array661 = load i8**, i8*** %str_array
  %716 = getelementptr i8*, i8** %str_array661, i32 1
  %temp662 = load i8*, i8** %716
  %717 = getelementptr i8*, i8** %713, i32 1
  store i8* %temp662, i8** %717
  %str_array663 = load i8**, i8*** %str_array
  %718 = getelementptr i8*, i8** %str_array663, i32 2
  %temp664 = load i8*, i8** %718
  %719 = getelementptr i8*, i8** %713, i32 2
  store i8* %temp664, i8** %719
  %str_array665 = load i8**, i8*** %str_array
  %720 = getelementptr i8*, i8** %str_array665, i32 0
  %temp666 = load i8*, i8** %720
  %721 = getelementptr i8*, i8** %713, i32 3
  store i8* %temp666, i8** %721
  %str_array667 = load i8**, i8*** %str_array
  %722 = getelementptr i8*, i8** %str_array667, i32 1
  %temp668 = load i8*, i8** %722
  %723 = getelementptr i8*, i8** %713, i32 4
  store i8* %temp668, i8** %723
  %str_array669 = load i8**, i8*** %str_array
  %724 = getelementptr i8*, i8** %str_array669, i32 2
  %temp670 = load i8*, i8** %724
  %725 = getelementptr i8*, i8** %713, i32 5
  store i8* %temp670, i8** %725
  %726 = getelementptr i8*, i8** %713, i32 0
  %temp671 = load i8*, i8** %726
  %727 = getelementptr i8*, i8** %706, i32 3
  store i8* %temp671, i8** %727
  %malloccall672 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %728 = bitcast i8* %malloccall672 to i8**
  %str_array673 = load i8**, i8*** %str_array
  %729 = getelementptr i8*, i8** %str_array673, i32 0
  %temp674 = load i8*, i8** %729
  %730 = getelementptr i8*, i8** %728, i32 0
  store i8* %temp674, i8** %730
  %str_array675 = load i8**, i8*** %str_array
  %731 = getelementptr i8*, i8** %str_array675, i32 1
  %temp676 = load i8*, i8** %731
  %732 = getelementptr i8*, i8** %728, i32 1
  store i8* %temp676, i8** %732
  %str_array677 = load i8**, i8*** %str_array
  %733 = getelementptr i8*, i8** %str_array677, i32 2
  %temp678 = load i8*, i8** %733
  %734 = getelementptr i8*, i8** %728, i32 2
  store i8* %temp678, i8** %734
  %str_array679 = load i8**, i8*** %str_array
  %735 = getelementptr i8*, i8** %str_array679, i32 0
  %temp680 = load i8*, i8** %735
  %736 = getelementptr i8*, i8** %728, i32 3
  store i8* %temp680, i8** %736
  %str_array681 = load i8**, i8*** %str_array
  %737 = getelementptr i8*, i8** %str_array681, i32 1
  %temp682 = load i8*, i8** %737
  %738 = getelementptr i8*, i8** %728, i32 4
  store i8* %temp682, i8** %738
  %str_array683 = load i8**, i8*** %str_array
  %739 = getelementptr i8*, i8** %str_array683, i32 2
  %temp684 = load i8*, i8** %739
  %740 = getelementptr i8*, i8** %728, i32 5
  store i8* %temp684, i8** %740
  %741 = getelementptr i8*, i8** %728, i32 1
  %temp685 = load i8*, i8** %741
  %742 = getelementptr i8*, i8** %706, i32 4
  store i8* %temp685, i8** %742
  %malloccall686 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %743 = bitcast i8* %malloccall686 to i8**
  %str_array687 = load i8**, i8*** %str_array
  %744 = getelementptr i8*, i8** %str_array687, i32 0
  %temp688 = load i8*, i8** %744
  %745 = getelementptr i8*, i8** %743, i32 0
  store i8* %temp688, i8** %745
  %str_array689 = load i8**, i8*** %str_array
  %746 = getelementptr i8*, i8** %str_array689, i32 1
  %temp690 = load i8*, i8** %746
  %747 = getelementptr i8*, i8** %743, i32 1
  store i8* %temp690, i8** %747
  %str_array691 = load i8**, i8*** %str_array
  %748 = getelementptr i8*, i8** %str_array691, i32 2
  %temp692 = load i8*, i8** %748
  %749 = getelementptr i8*, i8** %743, i32 2
  store i8* %temp692, i8** %749
  %str_array693 = load i8**, i8*** %str_array
  %750 = getelementptr i8*, i8** %str_array693, i32 0
  %temp694 = load i8*, i8** %750
  %751 = getelementptr i8*, i8** %743, i32 3
  store i8* %temp694, i8** %751
  %str_array695 = load i8**, i8*** %str_array
  %752 = getelementptr i8*, i8** %str_array695, i32 1
  %temp696 = load i8*, i8** %752
  %753 = getelementptr i8*, i8** %743, i32 4
  store i8* %temp696, i8** %753
  %str_array697 = load i8**, i8*** %str_array
  %754 = getelementptr i8*, i8** %str_array697, i32 2
  %temp698 = load i8*, i8** %754
  %755 = getelementptr i8*, i8** %743, i32 5
  store i8* %temp698, i8** %755
  %756 = getelementptr i8*, i8** %743, i32 2
  %temp699 = load i8*, i8** %756
  %757 = getelementptr i8*, i8** %706, i32 5
  store i8* %temp699, i8** %757
  %malloccall700 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %758 = bitcast i8* %malloccall700 to i8**
  %str_array701 = load i8**, i8*** %str_array
  %759 = getelementptr i8*, i8** %str_array701, i32 0
  %temp702 = load i8*, i8** %759
  %760 = getelementptr i8*, i8** %758, i32 0
  store i8* %temp702, i8** %760
  %str_array703 = load i8**, i8*** %str_array
  %761 = getelementptr i8*, i8** %str_array703, i32 1
  %temp704 = load i8*, i8** %761
  %762 = getelementptr i8*, i8** %758, i32 1
  store i8* %temp704, i8** %762
  %str_array705 = load i8**, i8*** %str_array
  %763 = getelementptr i8*, i8** %str_array705, i32 2
  %temp706 = load i8*, i8** %763
  %764 = getelementptr i8*, i8** %758, i32 2
  store i8* %temp706, i8** %764
  %str_array707 = load i8**, i8*** %str_array
  %765 = getelementptr i8*, i8** %str_array707, i32 0
  %temp708 = load i8*, i8** %765
  %766 = getelementptr i8*, i8** %758, i32 3
  store i8* %temp708, i8** %766
  %str_array709 = load i8**, i8*** %str_array
  %767 = getelementptr i8*, i8** %str_array709, i32 1
  %temp710 = load i8*, i8** %767
  %768 = getelementptr i8*, i8** %758, i32 4
  store i8* %temp710, i8** %768
  %str_array711 = load i8**, i8*** %str_array
  %769 = getelementptr i8*, i8** %str_array711, i32 2
  %temp712 = load i8*, i8** %769
  %770 = getelementptr i8*, i8** %758, i32 5
  store i8* %temp712, i8** %770
  %771 = getelementptr i8*, i8** %758, i32 3
  %temp713 = load i8*, i8** %771
  %772 = getelementptr i8*, i8** %706, i32 6
  store i8* %temp713, i8** %772
  %malloccall714 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %773 = bitcast i8* %malloccall714 to i8**
  %str_array715 = load i8**, i8*** %str_array
  %774 = getelementptr i8*, i8** %str_array715, i32 0
  %temp716 = load i8*, i8** %774
  %775 = getelementptr i8*, i8** %773, i32 0
  store i8* %temp716, i8** %775
  %str_array717 = load i8**, i8*** %str_array
  %776 = getelementptr i8*, i8** %str_array717, i32 1
  %temp718 = load i8*, i8** %776
  %777 = getelementptr i8*, i8** %773, i32 1
  store i8* %temp718, i8** %777
  %str_array719 = load i8**, i8*** %str_array
  %778 = getelementptr i8*, i8** %str_array719, i32 2
  %temp720 = load i8*, i8** %778
  %779 = getelementptr i8*, i8** %773, i32 2
  store i8* %temp720, i8** %779
  %str_array721 = load i8**, i8*** %str_array
  %780 = getelementptr i8*, i8** %str_array721, i32 0
  %temp722 = load i8*, i8** %780
  %781 = getelementptr i8*, i8** %773, i32 3
  store i8* %temp722, i8** %781
  %str_array723 = load i8**, i8*** %str_array
  %782 = getelementptr i8*, i8** %str_array723, i32 1
  %temp724 = load i8*, i8** %782
  %783 = getelementptr i8*, i8** %773, i32 4
  store i8* %temp724, i8** %783
  %str_array725 = load i8**, i8*** %str_array
  %784 = getelementptr i8*, i8** %str_array725, i32 2
  %temp726 = load i8*, i8** %784
  %785 = getelementptr i8*, i8** %773, i32 5
  store i8* %temp726, i8** %785
  %786 = getelementptr i8*, i8** %773, i32 4
  %temp727 = load i8*, i8** %786
  %787 = getelementptr i8*, i8** %706, i32 7
  store i8* %temp727, i8** %787
  %malloccall728 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %788 = bitcast i8* %malloccall728 to i8**
  %str_array729 = load i8**, i8*** %str_array
  %789 = getelementptr i8*, i8** %str_array729, i32 0
  %temp730 = load i8*, i8** %789
  %790 = getelementptr i8*, i8** %788, i32 0
  store i8* %temp730, i8** %790
  %str_array731 = load i8**, i8*** %str_array
  %791 = getelementptr i8*, i8** %str_array731, i32 1
  %temp732 = load i8*, i8** %791
  %792 = getelementptr i8*, i8** %788, i32 1
  store i8* %temp732, i8** %792
  %str_array733 = load i8**, i8*** %str_array
  %793 = getelementptr i8*, i8** %str_array733, i32 2
  %temp734 = load i8*, i8** %793
  %794 = getelementptr i8*, i8** %788, i32 2
  store i8* %temp734, i8** %794
  %str_array735 = load i8**, i8*** %str_array
  %795 = getelementptr i8*, i8** %str_array735, i32 0
  %temp736 = load i8*, i8** %795
  %796 = getelementptr i8*, i8** %788, i32 3
  store i8* %temp736, i8** %796
  %str_array737 = load i8**, i8*** %str_array
  %797 = getelementptr i8*, i8** %str_array737, i32 1
  %temp738 = load i8*, i8** %797
  %798 = getelementptr i8*, i8** %788, i32 4
  store i8* %temp738, i8** %798
  %str_array739 = load i8**, i8*** %str_array
  %799 = getelementptr i8*, i8** %str_array739, i32 2
  %temp740 = load i8*, i8** %799
  %800 = getelementptr i8*, i8** %788, i32 5
  store i8* %temp740, i8** %800
  %801 = getelementptr i8*, i8** %788, i32 5
  %temp741 = load i8*, i8** %801
  %802 = getelementptr i8*, i8** %706, i32 8
  store i8* %temp741, i8** %802
  %803 = getelementptr i8*, i8** %706, i32 6
  %temp742 = load i8*, i8** %803
  %804 = getelementptr i8*, i8** %105, i32 9
  store i8* %temp742, i8** %804
  %malloccall743 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 9))
  %805 = bitcast i8* %malloccall743 to i8**
  %str_array744 = load i8**, i8*** %str_array
  %806 = getelementptr i8*, i8** %str_array744, i32 0
  %temp745 = load i8*, i8** %806
  %807 = getelementptr i8*, i8** %805, i32 0
  store i8* %temp745, i8** %807
  %str_array746 = load i8**, i8*** %str_array
  %808 = getelementptr i8*, i8** %str_array746, i32 1
  %temp747 = load i8*, i8** %808
  %809 = getelementptr i8*, i8** %805, i32 1
  store i8* %temp747, i8** %809
  %str_array748 = load i8**, i8*** %str_array
  %810 = getelementptr i8*, i8** %str_array748, i32 2
  %temp749 = load i8*, i8** %810
  %811 = getelementptr i8*, i8** %805, i32 2
  store i8* %temp749, i8** %811
  %malloccall750 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %812 = bitcast i8* %malloccall750 to i8**
  %str_array751 = load i8**, i8*** %str_array
  %813 = getelementptr i8*, i8** %str_array751, i32 0
  %temp752 = load i8*, i8** %813
  %814 = getelementptr i8*, i8** %812, i32 0
  store i8* %temp752, i8** %814
  %str_array753 = load i8**, i8*** %str_array
  %815 = getelementptr i8*, i8** %str_array753, i32 1
  %temp754 = load i8*, i8** %815
  %816 = getelementptr i8*, i8** %812, i32 1
  store i8* %temp754, i8** %816
  %str_array755 = load i8**, i8*** %str_array
  %817 = getelementptr i8*, i8** %str_array755, i32 2
  %temp756 = load i8*, i8** %817
  %818 = getelementptr i8*, i8** %812, i32 2
  store i8* %temp756, i8** %818
  %str_array757 = load i8**, i8*** %str_array
  %819 = getelementptr i8*, i8** %str_array757, i32 0
  %temp758 = load i8*, i8** %819
  %820 = getelementptr i8*, i8** %812, i32 3
  store i8* %temp758, i8** %820
  %str_array759 = load i8**, i8*** %str_array
  %821 = getelementptr i8*, i8** %str_array759, i32 1
  %temp760 = load i8*, i8** %821
  %822 = getelementptr i8*, i8** %812, i32 4
  store i8* %temp760, i8** %822
  %str_array761 = load i8**, i8*** %str_array
  %823 = getelementptr i8*, i8** %str_array761, i32 2
  %temp762 = load i8*, i8** %823
  %824 = getelementptr i8*, i8** %812, i32 5
  store i8* %temp762, i8** %824
  %825 = getelementptr i8*, i8** %812, i32 0
  %temp763 = load i8*, i8** %825
  %826 = getelementptr i8*, i8** %805, i32 3
  store i8* %temp763, i8** %826
  %malloccall764 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %827 = bitcast i8* %malloccall764 to i8**
  %str_array765 = load i8**, i8*** %str_array
  %828 = getelementptr i8*, i8** %str_array765, i32 0
  %temp766 = load i8*, i8** %828
  %829 = getelementptr i8*, i8** %827, i32 0
  store i8* %temp766, i8** %829
  %str_array767 = load i8**, i8*** %str_array
  %830 = getelementptr i8*, i8** %str_array767, i32 1
  %temp768 = load i8*, i8** %830
  %831 = getelementptr i8*, i8** %827, i32 1
  store i8* %temp768, i8** %831
  %str_array769 = load i8**, i8*** %str_array
  %832 = getelementptr i8*, i8** %str_array769, i32 2
  %temp770 = load i8*, i8** %832
  %833 = getelementptr i8*, i8** %827, i32 2
  store i8* %temp770, i8** %833
  %str_array771 = load i8**, i8*** %str_array
  %834 = getelementptr i8*, i8** %str_array771, i32 0
  %temp772 = load i8*, i8** %834
  %835 = getelementptr i8*, i8** %827, i32 3
  store i8* %temp772, i8** %835
  %str_array773 = load i8**, i8*** %str_array
  %836 = getelementptr i8*, i8** %str_array773, i32 1
  %temp774 = load i8*, i8** %836
  %837 = getelementptr i8*, i8** %827, i32 4
  store i8* %temp774, i8** %837
  %str_array775 = load i8**, i8*** %str_array
  %838 = getelementptr i8*, i8** %str_array775, i32 2
  %temp776 = load i8*, i8** %838
  %839 = getelementptr i8*, i8** %827, i32 5
  store i8* %temp776, i8** %839
  %840 = getelementptr i8*, i8** %827, i32 1
  %temp777 = load i8*, i8** %840
  %841 = getelementptr i8*, i8** %805, i32 4
  store i8* %temp777, i8** %841
  %malloccall778 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %842 = bitcast i8* %malloccall778 to i8**
  %str_array779 = load i8**, i8*** %str_array
  %843 = getelementptr i8*, i8** %str_array779, i32 0
  %temp780 = load i8*, i8** %843
  %844 = getelementptr i8*, i8** %842, i32 0
  store i8* %temp780, i8** %844
  %str_array781 = load i8**, i8*** %str_array
  %845 = getelementptr i8*, i8** %str_array781, i32 1
  %temp782 = load i8*, i8** %845
  %846 = getelementptr i8*, i8** %842, i32 1
  store i8* %temp782, i8** %846
  %str_array783 = load i8**, i8*** %str_array
  %847 = getelementptr i8*, i8** %str_array783, i32 2
  %temp784 = load i8*, i8** %847
  %848 = getelementptr i8*, i8** %842, i32 2
  store i8* %temp784, i8** %848
  %str_array785 = load i8**, i8*** %str_array
  %849 = getelementptr i8*, i8** %str_array785, i32 0
  %temp786 = load i8*, i8** %849
  %850 = getelementptr i8*, i8** %842, i32 3
  store i8* %temp786, i8** %850
  %str_array787 = load i8**, i8*** %str_array
  %851 = getelementptr i8*, i8** %str_array787, i32 1
  %temp788 = load i8*, i8** %851
  %852 = getelementptr i8*, i8** %842, i32 4
  store i8* %temp788, i8** %852
  %str_array789 = load i8**, i8*** %str_array
  %853 = getelementptr i8*, i8** %str_array789, i32 2
  %temp790 = load i8*, i8** %853
  %854 = getelementptr i8*, i8** %842, i32 5
  store i8* %temp790, i8** %854
  %855 = getelementptr i8*, i8** %842, i32 2
  %temp791 = load i8*, i8** %855
  %856 = getelementptr i8*, i8** %805, i32 5
  store i8* %temp791, i8** %856
  %malloccall792 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %857 = bitcast i8* %malloccall792 to i8**
  %str_array793 = load i8**, i8*** %str_array
  %858 = getelementptr i8*, i8** %str_array793, i32 0
  %temp794 = load i8*, i8** %858
  %859 = getelementptr i8*, i8** %857, i32 0
  store i8* %temp794, i8** %859
  %str_array795 = load i8**, i8*** %str_array
  %860 = getelementptr i8*, i8** %str_array795, i32 1
  %temp796 = load i8*, i8** %860
  %861 = getelementptr i8*, i8** %857, i32 1
  store i8* %temp796, i8** %861
  %str_array797 = load i8**, i8*** %str_array
  %862 = getelementptr i8*, i8** %str_array797, i32 2
  %temp798 = load i8*, i8** %862
  %863 = getelementptr i8*, i8** %857, i32 2
  store i8* %temp798, i8** %863
  %str_array799 = load i8**, i8*** %str_array
  %864 = getelementptr i8*, i8** %str_array799, i32 0
  %temp800 = load i8*, i8** %864
  %865 = getelementptr i8*, i8** %857, i32 3
  store i8* %temp800, i8** %865
  %str_array801 = load i8**, i8*** %str_array
  %866 = getelementptr i8*, i8** %str_array801, i32 1
  %temp802 = load i8*, i8** %866
  %867 = getelementptr i8*, i8** %857, i32 4
  store i8* %temp802, i8** %867
  %str_array803 = load i8**, i8*** %str_array
  %868 = getelementptr i8*, i8** %str_array803, i32 2
  %temp804 = load i8*, i8** %868
  %869 = getelementptr i8*, i8** %857, i32 5
  store i8* %temp804, i8** %869
  %870 = getelementptr i8*, i8** %857, i32 3
  %temp805 = load i8*, i8** %870
  %871 = getelementptr i8*, i8** %805, i32 6
  store i8* %temp805, i8** %871
  %malloccall806 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %872 = bitcast i8* %malloccall806 to i8**
  %str_array807 = load i8**, i8*** %str_array
  %873 = getelementptr i8*, i8** %str_array807, i32 0
  %temp808 = load i8*, i8** %873
  %874 = getelementptr i8*, i8** %872, i32 0
  store i8* %temp808, i8** %874
  %str_array809 = load i8**, i8*** %str_array
  %875 = getelementptr i8*, i8** %str_array809, i32 1
  %temp810 = load i8*, i8** %875
  %876 = getelementptr i8*, i8** %872, i32 1
  store i8* %temp810, i8** %876
  %str_array811 = load i8**, i8*** %str_array
  %877 = getelementptr i8*, i8** %str_array811, i32 2
  %temp812 = load i8*, i8** %877
  %878 = getelementptr i8*, i8** %872, i32 2
  store i8* %temp812, i8** %878
  %str_array813 = load i8**, i8*** %str_array
  %879 = getelementptr i8*, i8** %str_array813, i32 0
  %temp814 = load i8*, i8** %879
  %880 = getelementptr i8*, i8** %872, i32 3
  store i8* %temp814, i8** %880
  %str_array815 = load i8**, i8*** %str_array
  %881 = getelementptr i8*, i8** %str_array815, i32 1
  %temp816 = load i8*, i8** %881
  %882 = getelementptr i8*, i8** %872, i32 4
  store i8* %temp816, i8** %882
  %str_array817 = load i8**, i8*** %str_array
  %883 = getelementptr i8*, i8** %str_array817, i32 2
  %temp818 = load i8*, i8** %883
  %884 = getelementptr i8*, i8** %872, i32 5
  store i8* %temp818, i8** %884
  %885 = getelementptr i8*, i8** %872, i32 4
  %temp819 = load i8*, i8** %885
  %886 = getelementptr i8*, i8** %805, i32 7
  store i8* %temp819, i8** %886
  %malloccall820 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %887 = bitcast i8* %malloccall820 to i8**
  %str_array821 = load i8**, i8*** %str_array
  %888 = getelementptr i8*, i8** %str_array821, i32 0
  %temp822 = load i8*, i8** %888
  %889 = getelementptr i8*, i8** %887, i32 0
  store i8* %temp822, i8** %889
  %str_array823 = load i8**, i8*** %str_array
  %890 = getelementptr i8*, i8** %str_array823, i32 1
  %temp824 = load i8*, i8** %890
  %891 = getelementptr i8*, i8** %887, i32 1
  store i8* %temp824, i8** %891
  %str_array825 = load i8**, i8*** %str_array
  %892 = getelementptr i8*, i8** %str_array825, i32 2
  %temp826 = load i8*, i8** %892
  %893 = getelementptr i8*, i8** %887, i32 2
  store i8* %temp826, i8** %893
  %str_array827 = load i8**, i8*** %str_array
  %894 = getelementptr i8*, i8** %str_array827, i32 0
  %temp828 = load i8*, i8** %894
  %895 = getelementptr i8*, i8** %887, i32 3
  store i8* %temp828, i8** %895
  %str_array829 = load i8**, i8*** %str_array
  %896 = getelementptr i8*, i8** %str_array829, i32 1
  %temp830 = load i8*, i8** %896
  %897 = getelementptr i8*, i8** %887, i32 4
  store i8* %temp830, i8** %897
  %str_array831 = load i8**, i8*** %str_array
  %898 = getelementptr i8*, i8** %str_array831, i32 2
  %temp832 = load i8*, i8** %898
  %899 = getelementptr i8*, i8** %887, i32 5
  store i8* %temp832, i8** %899
  %900 = getelementptr i8*, i8** %887, i32 5
  %temp833 = load i8*, i8** %900
  %901 = getelementptr i8*, i8** %805, i32 8
  store i8* %temp833, i8** %901
  %902 = getelementptr i8*, i8** %805, i32 7
  %temp834 = load i8*, i8** %902
  %903 = getelementptr i8*, i8** %105, i32 10
  store i8* %temp834, i8** %903
  %malloccall835 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 9))
  %904 = bitcast i8* %malloccall835 to i8**
  %str_array836 = load i8**, i8*** %str_array
  %905 = getelementptr i8*, i8** %str_array836, i32 0
  %temp837 = load i8*, i8** %905
  %906 = getelementptr i8*, i8** %904, i32 0
  store i8* %temp837, i8** %906
  %str_array838 = load i8**, i8*** %str_array
  %907 = getelementptr i8*, i8** %str_array838, i32 1
  %temp839 = load i8*, i8** %907
  %908 = getelementptr i8*, i8** %904, i32 1
  store i8* %temp839, i8** %908
  %str_array840 = load i8**, i8*** %str_array
  %909 = getelementptr i8*, i8** %str_array840, i32 2
  %temp841 = load i8*, i8** %909
  %910 = getelementptr i8*, i8** %904, i32 2
  store i8* %temp841, i8** %910
  %malloccall842 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %911 = bitcast i8* %malloccall842 to i8**
  %str_array843 = load i8**, i8*** %str_array
  %912 = getelementptr i8*, i8** %str_array843, i32 0
  %temp844 = load i8*, i8** %912
  %913 = getelementptr i8*, i8** %911, i32 0
  store i8* %temp844, i8** %913
  %str_array845 = load i8**, i8*** %str_array
  %914 = getelementptr i8*, i8** %str_array845, i32 1
  %temp846 = load i8*, i8** %914
  %915 = getelementptr i8*, i8** %911, i32 1
  store i8* %temp846, i8** %915
  %str_array847 = load i8**, i8*** %str_array
  %916 = getelementptr i8*, i8** %str_array847, i32 2
  %temp848 = load i8*, i8** %916
  %917 = getelementptr i8*, i8** %911, i32 2
  store i8* %temp848, i8** %917
  %str_array849 = load i8**, i8*** %str_array
  %918 = getelementptr i8*, i8** %str_array849, i32 0
  %temp850 = load i8*, i8** %918
  %919 = getelementptr i8*, i8** %911, i32 3
  store i8* %temp850, i8** %919
  %str_array851 = load i8**, i8*** %str_array
  %920 = getelementptr i8*, i8** %str_array851, i32 1
  %temp852 = load i8*, i8** %920
  %921 = getelementptr i8*, i8** %911, i32 4
  store i8* %temp852, i8** %921
  %str_array853 = load i8**, i8*** %str_array
  %922 = getelementptr i8*, i8** %str_array853, i32 2
  %temp854 = load i8*, i8** %922
  %923 = getelementptr i8*, i8** %911, i32 5
  store i8* %temp854, i8** %923
  %924 = getelementptr i8*, i8** %911, i32 0
  %temp855 = load i8*, i8** %924
  %925 = getelementptr i8*, i8** %904, i32 3
  store i8* %temp855, i8** %925
  %malloccall856 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %926 = bitcast i8* %malloccall856 to i8**
  %str_array857 = load i8**, i8*** %str_array
  %927 = getelementptr i8*, i8** %str_array857, i32 0
  %temp858 = load i8*, i8** %927
  %928 = getelementptr i8*, i8** %926, i32 0
  store i8* %temp858, i8** %928
  %str_array859 = load i8**, i8*** %str_array
  %929 = getelementptr i8*, i8** %str_array859, i32 1
  %temp860 = load i8*, i8** %929
  %930 = getelementptr i8*, i8** %926, i32 1
  store i8* %temp860, i8** %930
  %str_array861 = load i8**, i8*** %str_array
  %931 = getelementptr i8*, i8** %str_array861, i32 2
  %temp862 = load i8*, i8** %931
  %932 = getelementptr i8*, i8** %926, i32 2
  store i8* %temp862, i8** %932
  %str_array863 = load i8**, i8*** %str_array
  %933 = getelementptr i8*, i8** %str_array863, i32 0
  %temp864 = load i8*, i8** %933
  %934 = getelementptr i8*, i8** %926, i32 3
  store i8* %temp864, i8** %934
  %str_array865 = load i8**, i8*** %str_array
  %935 = getelementptr i8*, i8** %str_array865, i32 1
  %temp866 = load i8*, i8** %935
  %936 = getelementptr i8*, i8** %926, i32 4
  store i8* %temp866, i8** %936
  %str_array867 = load i8**, i8*** %str_array
  %937 = getelementptr i8*, i8** %str_array867, i32 2
  %temp868 = load i8*, i8** %937
  %938 = getelementptr i8*, i8** %926, i32 5
  store i8* %temp868, i8** %938
  %939 = getelementptr i8*, i8** %926, i32 1
  %temp869 = load i8*, i8** %939
  %940 = getelementptr i8*, i8** %904, i32 4
  store i8* %temp869, i8** %940
  %malloccall870 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %941 = bitcast i8* %malloccall870 to i8**
  %str_array871 = load i8**, i8*** %str_array
  %942 = getelementptr i8*, i8** %str_array871, i32 0
  %temp872 = load i8*, i8** %942
  %943 = getelementptr i8*, i8** %941, i32 0
  store i8* %temp872, i8** %943
  %str_array873 = load i8**, i8*** %str_array
  %944 = getelementptr i8*, i8** %str_array873, i32 1
  %temp874 = load i8*, i8** %944
  %945 = getelementptr i8*, i8** %941, i32 1
  store i8* %temp874, i8** %945
  %str_array875 = load i8**, i8*** %str_array
  %946 = getelementptr i8*, i8** %str_array875, i32 2
  %temp876 = load i8*, i8** %946
  %947 = getelementptr i8*, i8** %941, i32 2
  store i8* %temp876, i8** %947
  %str_array877 = load i8**, i8*** %str_array
  %948 = getelementptr i8*, i8** %str_array877, i32 0
  %temp878 = load i8*, i8** %948
  %949 = getelementptr i8*, i8** %941, i32 3
  store i8* %temp878, i8** %949
  %str_array879 = load i8**, i8*** %str_array
  %950 = getelementptr i8*, i8** %str_array879, i32 1
  %temp880 = load i8*, i8** %950
  %951 = getelementptr i8*, i8** %941, i32 4
  store i8* %temp880, i8** %951
  %str_array881 = load i8**, i8*** %str_array
  %952 = getelementptr i8*, i8** %str_array881, i32 2
  %temp882 = load i8*, i8** %952
  %953 = getelementptr i8*, i8** %941, i32 5
  store i8* %temp882, i8** %953
  %954 = getelementptr i8*, i8** %941, i32 2
  %temp883 = load i8*, i8** %954
  %955 = getelementptr i8*, i8** %904, i32 5
  store i8* %temp883, i8** %955
  %malloccall884 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %956 = bitcast i8* %malloccall884 to i8**
  %str_array885 = load i8**, i8*** %str_array
  %957 = getelementptr i8*, i8** %str_array885, i32 0
  %temp886 = load i8*, i8** %957
  %958 = getelementptr i8*, i8** %956, i32 0
  store i8* %temp886, i8** %958
  %str_array887 = load i8**, i8*** %str_array
  %959 = getelementptr i8*, i8** %str_array887, i32 1
  %temp888 = load i8*, i8** %959
  %960 = getelementptr i8*, i8** %956, i32 1
  store i8* %temp888, i8** %960
  %str_array889 = load i8**, i8*** %str_array
  %961 = getelementptr i8*, i8** %str_array889, i32 2
  %temp890 = load i8*, i8** %961
  %962 = getelementptr i8*, i8** %956, i32 2
  store i8* %temp890, i8** %962
  %str_array891 = load i8**, i8*** %str_array
  %963 = getelementptr i8*, i8** %str_array891, i32 0
  %temp892 = load i8*, i8** %963
  %964 = getelementptr i8*, i8** %956, i32 3
  store i8* %temp892, i8** %964
  %str_array893 = load i8**, i8*** %str_array
  %965 = getelementptr i8*, i8** %str_array893, i32 1
  %temp894 = load i8*, i8** %965
  %966 = getelementptr i8*, i8** %956, i32 4
  store i8* %temp894, i8** %966
  %str_array895 = load i8**, i8*** %str_array
  %967 = getelementptr i8*, i8** %str_array895, i32 2
  %temp896 = load i8*, i8** %967
  %968 = getelementptr i8*, i8** %956, i32 5
  store i8* %temp896, i8** %968
  %969 = getelementptr i8*, i8** %956, i32 3
  %temp897 = load i8*, i8** %969
  %970 = getelementptr i8*, i8** %904, i32 6
  store i8* %temp897, i8** %970
  %malloccall898 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %971 = bitcast i8* %malloccall898 to i8**
  %str_array899 = load i8**, i8*** %str_array
  %972 = getelementptr i8*, i8** %str_array899, i32 0
  %temp900 = load i8*, i8** %972
  %973 = getelementptr i8*, i8** %971, i32 0
  store i8* %temp900, i8** %973
  %str_array901 = load i8**, i8*** %str_array
  %974 = getelementptr i8*, i8** %str_array901, i32 1
  %temp902 = load i8*, i8** %974
  %975 = getelementptr i8*, i8** %971, i32 1
  store i8* %temp902, i8** %975
  %str_array903 = load i8**, i8*** %str_array
  %976 = getelementptr i8*, i8** %str_array903, i32 2
  %temp904 = load i8*, i8** %976
  %977 = getelementptr i8*, i8** %971, i32 2
  store i8* %temp904, i8** %977
  %str_array905 = load i8**, i8*** %str_array
  %978 = getelementptr i8*, i8** %str_array905, i32 0
  %temp906 = load i8*, i8** %978
  %979 = getelementptr i8*, i8** %971, i32 3
  store i8* %temp906, i8** %979
  %str_array907 = load i8**, i8*** %str_array
  %980 = getelementptr i8*, i8** %str_array907, i32 1
  %temp908 = load i8*, i8** %980
  %981 = getelementptr i8*, i8** %971, i32 4
  store i8* %temp908, i8** %981
  %str_array909 = load i8**, i8*** %str_array
  %982 = getelementptr i8*, i8** %str_array909, i32 2
  %temp910 = load i8*, i8** %982
  %983 = getelementptr i8*, i8** %971, i32 5
  store i8* %temp910, i8** %983
  %984 = getelementptr i8*, i8** %971, i32 4
  %temp911 = load i8*, i8** %984
  %985 = getelementptr i8*, i8** %904, i32 7
  store i8* %temp911, i8** %985
  %malloccall912 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %986 = bitcast i8* %malloccall912 to i8**
  %str_array913 = load i8**, i8*** %str_array
  %987 = getelementptr i8*, i8** %str_array913, i32 0
  %temp914 = load i8*, i8** %987
  %988 = getelementptr i8*, i8** %986, i32 0
  store i8* %temp914, i8** %988
  %str_array915 = load i8**, i8*** %str_array
  %989 = getelementptr i8*, i8** %str_array915, i32 1
  %temp916 = load i8*, i8** %989
  %990 = getelementptr i8*, i8** %986, i32 1
  store i8* %temp916, i8** %990
  %str_array917 = load i8**, i8*** %str_array
  %991 = getelementptr i8*, i8** %str_array917, i32 2
  %temp918 = load i8*, i8** %991
  %992 = getelementptr i8*, i8** %986, i32 2
  store i8* %temp918, i8** %992
  %str_array919 = load i8**, i8*** %str_array
  %993 = getelementptr i8*, i8** %str_array919, i32 0
  %temp920 = load i8*, i8** %993
  %994 = getelementptr i8*, i8** %986, i32 3
  store i8* %temp920, i8** %994
  %str_array921 = load i8**, i8*** %str_array
  %995 = getelementptr i8*, i8** %str_array921, i32 1
  %temp922 = load i8*, i8** %995
  %996 = getelementptr i8*, i8** %986, i32 4
  store i8* %temp922, i8** %996
  %str_array923 = load i8**, i8*** %str_array
  %997 = getelementptr i8*, i8** %str_array923, i32 2
  %temp924 = load i8*, i8** %997
  %998 = getelementptr i8*, i8** %986, i32 5
  store i8* %temp924, i8** %998
  %999 = getelementptr i8*, i8** %986, i32 5
  %temp925 = load i8*, i8** %999
  %1000 = getelementptr i8*, i8** %904, i32 8
  store i8* %temp925, i8** %1000
  %1001 = getelementptr i8*, i8** %904, i32 8
  %temp926 = load i8*, i8** %1001
  %1002 = getelementptr i8*, i8** %105, i32 11
  store i8* %temp926, i8** %1002
  store i8** %105, i8*** %quad_str
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i930 = load i32, i32* %i
  %tmp931 = icmp slt i32 %i930, 9
  br i1 %tmp931, label %while_body, label %merge

while_body:                                       ; preds = %while
  %triple_int927 = load i32*, i32** %triple_int
  %i928 = load i32, i32* %i
  %1003 = getelementptr i32, i32* %triple_int927, i32 %i928
  %1004 = load i32, i32* %1003
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %1004)
  %i929 = load i32, i32* %i
  %tmp = add i32 %i929, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  store i32 0, i32* %i
  br label %while932

while932:                                         ; preds = %while_body933, %merge
  %i938 = load i32, i32* %i
  %tmp939 = icmp slt i32 %i938, 12
  br i1 %tmp939, label %while_body933, label %merge940

while_body933:                                    ; preds = %while932
  %quad_str934 = load i8**, i8*** %quad_str
  %i935 = load i32, i32* %i
  %1005 = getelementptr i8*, i8** %quad_str934, i32 %i935
  %1006 = load i8*, i8** %1005
  %prints = call i32 (i8*, ...) @puts(i8* %1006)
  %i936 = load i32, i32* %i
  %tmp937 = add i32 %i936, 1
  store i32 %tmp937, i32* %i
  br label %while932

merge940:                                         ; preds = %while932
  ret i32 0
}

declare noalias i8* @malloc(i32)
