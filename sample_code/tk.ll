; ModuleID = 'CAML'
source_filename = "CAML"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"4#" = private unnamed_addr constant [4 x i8] c"3^5\00", align 1
@"4#.2" = private unnamed_addr constant [4 x i8] c"2#5\00", align 1
@"4#.3" = private unnamed_addr constant [4 x i8] c"3^5\00", align 1
@"4#.4" = private unnamed_addr constant [4 x i8] c"2#5\00", align 1
@"4#.5" = private unnamed_addr constant [4 x i8] c"3^5\00", align 1
@"4#.6" = private unnamed_addr constant [4 x i8] c"7^4\00", align 1
@"4#.7" = private unnamed_addr constant [4 x i8] c"2^5\00", align 1
@"4#.8" = private unnamed_addr constant [4 x i8] c"1^5\00", align 1
@"4#.9" = private unnamed_addr constant [4 x i8] c"6^4\00", align 1
@"4#.10" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.11" = private unnamed_addr constant [4 x i8] c"1^4\00", align 1
@"4#.12" = private unnamed_addr constant [4 x i8] c"3^4\00", align 1
@"4#.13" = private unnamed_addr constant [4 x i8] c"6^4\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @puts(i8*, ...)

declare i32 @pitch_to_int(i8*, ...)

declare i32 @ran(i32, ...)

declare i32 @up_8(i8*, ...)

declare i32 @down_8(i8*, ...)

define i32 @main() {
entry:
  %i = alloca i32
  %start_melody = alloca i8**
  %first_bar_melody = alloca i8**
  %second_bar_melody = alloca i8**
  %melody = alloca i8**
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 2))
  %0 = bitcast i8* %malloccall to i8**
  %1 = getelementptr i8*, i8** %0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#", i32 0, i32 0), i8** %1
  %2 = getelementptr i8*, i8** %0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.2", i32 0, i32 0), i8** %2
  store i8** %0, i8*** %start_melody
  %malloccall1 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 6))
  %3 = bitcast i8* %malloccall1 to i8**
  %4 = getelementptr i8*, i8** %3, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.3", i32 0, i32 0), i8** %4
  %5 = getelementptr i8*, i8** %3, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.4", i32 0, i32 0), i8** %5
  %6 = getelementptr i8*, i8** %3, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.5", i32 0, i32 0), i8** %6
  %7 = getelementptr i8*, i8** %3, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.6", i32 0, i32 0), i8** %7
  %8 = getelementptr i8*, i8** %3, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.7", i32 0, i32 0), i8** %8
  %9 = getelementptr i8*, i8** %3, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.8", i32 0, i32 0), i8** %9
  store i8** %3, i8*** %first_bar_melody
  %malloccall2 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 5))
  %10 = bitcast i8* %malloccall2 to i8**
  %11 = getelementptr i8*, i8** %10, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.9", i32 0, i32 0), i8** %11
  %12 = getelementptr i8*, i8** %10, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.10", i32 0, i32 0), i8** %12
  %13 = getelementptr i8*, i8** %10, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.11", i32 0, i32 0), i8** %13
  %14 = getelementptr i8*, i8** %10, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.12", i32 0, i32 0), i8** %14
  %15 = getelementptr i8*, i8** %10, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.13", i32 0, i32 0), i8** %15
  store i8** %10, i8*** %second_bar_melody
  %malloccall3 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 13))
  %16 = bitcast i8* %malloccall3 to i8**
  %start_melody4 = load i8**, i8*** %start_melody
  %17 = getelementptr i8*, i8** %start_melody4, i32 0
  %temp = load i8*, i8** %17
  %18 = getelementptr i8*, i8** %16, i32 0
  store i8* %temp, i8** %18
  %start_melody5 = load i8**, i8*** %start_melody
  %19 = getelementptr i8*, i8** %start_melody5, i32 1
  %temp6 = load i8*, i8** %19
  %20 = getelementptr i8*, i8** %16, i32 1
  store i8* %temp6, i8** %20
  %malloccall7 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 11))
  %21 = bitcast i8* %malloccall7 to i8**
  %first_bar_melody8 = load i8**, i8*** %first_bar_melody
  %22 = getelementptr i8*, i8** %first_bar_melody8, i32 0
  %temp9 = load i8*, i8** %22
  %23 = getelementptr i8*, i8** %21, i32 0
  store i8* %temp9, i8** %23
  %first_bar_melody10 = load i8**, i8*** %first_bar_melody
  %24 = getelementptr i8*, i8** %first_bar_melody10, i32 1
  %temp11 = load i8*, i8** %24
  %25 = getelementptr i8*, i8** %21, i32 1
  store i8* %temp11, i8** %25
  %first_bar_melody12 = load i8**, i8*** %first_bar_melody
  %26 = getelementptr i8*, i8** %first_bar_melody12, i32 2
  %temp13 = load i8*, i8** %26
  %27 = getelementptr i8*, i8** %21, i32 2
  store i8* %temp13, i8** %27
  %first_bar_melody14 = load i8**, i8*** %first_bar_melody
  %28 = getelementptr i8*, i8** %first_bar_melody14, i32 3
  %temp15 = load i8*, i8** %28
  %29 = getelementptr i8*, i8** %21, i32 3
  store i8* %temp15, i8** %29
  %first_bar_melody16 = load i8**, i8*** %first_bar_melody
  %30 = getelementptr i8*, i8** %first_bar_melody16, i32 4
  %temp17 = load i8*, i8** %30
  %31 = getelementptr i8*, i8** %21, i32 4
  store i8* %temp17, i8** %31
  %first_bar_melody18 = load i8**, i8*** %first_bar_melody
  %32 = getelementptr i8*, i8** %first_bar_melody18, i32 5
  %temp19 = load i8*, i8** %32
  %33 = getelementptr i8*, i8** %21, i32 5
  store i8* %temp19, i8** %33
  %second_bar_melody20 = load i8**, i8*** %second_bar_melody
  %34 = getelementptr i8*, i8** %second_bar_melody20, i32 0
  %temp21 = load i8*, i8** %34
  %35 = getelementptr i8*, i8** %21, i32 6
  store i8* %temp21, i8** %35
  %second_bar_melody22 = load i8**, i8*** %second_bar_melody
  %36 = getelementptr i8*, i8** %second_bar_melody22, i32 1
  %temp23 = load i8*, i8** %36
  %37 = getelementptr i8*, i8** %21, i32 7
  store i8* %temp23, i8** %37
  %second_bar_melody24 = load i8**, i8*** %second_bar_melody
  %38 = getelementptr i8*, i8** %second_bar_melody24, i32 2
  %temp25 = load i8*, i8** %38
  %39 = getelementptr i8*, i8** %21, i32 8
  store i8* %temp25, i8** %39
  %second_bar_melody26 = load i8**, i8*** %second_bar_melody
  %40 = getelementptr i8*, i8** %second_bar_melody26, i32 3
  %temp27 = load i8*, i8** %40
  %41 = getelementptr i8*, i8** %21, i32 9
  store i8* %temp27, i8** %41
  %second_bar_melody28 = load i8**, i8*** %second_bar_melody
  %42 = getelementptr i8*, i8** %second_bar_melody28, i32 4
  %temp29 = load i8*, i8** %42
  %43 = getelementptr i8*, i8** %21, i32 10
  store i8* %temp29, i8** %43
  %44 = getelementptr i8*, i8** %21, i32 0
  %temp30 = load i8*, i8** %44
  %45 = getelementptr i8*, i8** %16, i32 2
  store i8* %temp30, i8** %45
  %malloccall31 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 11))
  %46 = bitcast i8* %malloccall31 to i8**
  %first_bar_melody32 = load i8**, i8*** %first_bar_melody
  %47 = getelementptr i8*, i8** %first_bar_melody32, i32 0
  %temp33 = load i8*, i8** %47
  %48 = getelementptr i8*, i8** %46, i32 0
  store i8* %temp33, i8** %48
  %first_bar_melody34 = load i8**, i8*** %first_bar_melody
  %49 = getelementptr i8*, i8** %first_bar_melody34, i32 1
  %temp35 = load i8*, i8** %49
  %50 = getelementptr i8*, i8** %46, i32 1
  store i8* %temp35, i8** %50
  %first_bar_melody36 = load i8**, i8*** %first_bar_melody
  %51 = getelementptr i8*, i8** %first_bar_melody36, i32 2
  %temp37 = load i8*, i8** %51
  %52 = getelementptr i8*, i8** %46, i32 2
  store i8* %temp37, i8** %52
  %first_bar_melody38 = load i8**, i8*** %first_bar_melody
  %53 = getelementptr i8*, i8** %first_bar_melody38, i32 3
  %temp39 = load i8*, i8** %53
  %54 = getelementptr i8*, i8** %46, i32 3
  store i8* %temp39, i8** %54
  %first_bar_melody40 = load i8**, i8*** %first_bar_melody
  %55 = getelementptr i8*, i8** %first_bar_melody40, i32 4
  %temp41 = load i8*, i8** %55
  %56 = getelementptr i8*, i8** %46, i32 4
  store i8* %temp41, i8** %56
  %first_bar_melody42 = load i8**, i8*** %first_bar_melody
  %57 = getelementptr i8*, i8** %first_bar_melody42, i32 5
  %temp43 = load i8*, i8** %57
  %58 = getelementptr i8*, i8** %46, i32 5
  store i8* %temp43, i8** %58
  %second_bar_melody44 = load i8**, i8*** %second_bar_melody
  %59 = getelementptr i8*, i8** %second_bar_melody44, i32 0
  %temp45 = load i8*, i8** %59
  %60 = getelementptr i8*, i8** %46, i32 6
  store i8* %temp45, i8** %60
  %second_bar_melody46 = load i8**, i8*** %second_bar_melody
  %61 = getelementptr i8*, i8** %second_bar_melody46, i32 1
  %temp47 = load i8*, i8** %61
  %62 = getelementptr i8*, i8** %46, i32 7
  store i8* %temp47, i8** %62
  %second_bar_melody48 = load i8**, i8*** %second_bar_melody
  %63 = getelementptr i8*, i8** %second_bar_melody48, i32 2
  %temp49 = load i8*, i8** %63
  %64 = getelementptr i8*, i8** %46, i32 8
  store i8* %temp49, i8** %64
  %second_bar_melody50 = load i8**, i8*** %second_bar_melody
  %65 = getelementptr i8*, i8** %second_bar_melody50, i32 3
  %temp51 = load i8*, i8** %65
  %66 = getelementptr i8*, i8** %46, i32 9
  store i8* %temp51, i8** %66
  %second_bar_melody52 = load i8**, i8*** %second_bar_melody
  %67 = getelementptr i8*, i8** %second_bar_melody52, i32 4
  %temp53 = load i8*, i8** %67
  %68 = getelementptr i8*, i8** %46, i32 10
  store i8* %temp53, i8** %68
  %69 = getelementptr i8*, i8** %46, i32 1
  %temp54 = load i8*, i8** %69
  %70 = getelementptr i8*, i8** %16, i32 3
  store i8* %temp54, i8** %70
  %malloccall55 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 11))
  %71 = bitcast i8* %malloccall55 to i8**
  %first_bar_melody56 = load i8**, i8*** %first_bar_melody
  %72 = getelementptr i8*, i8** %first_bar_melody56, i32 0
  %temp57 = load i8*, i8** %72
  %73 = getelementptr i8*, i8** %71, i32 0
  store i8* %temp57, i8** %73
  %first_bar_melody58 = load i8**, i8*** %first_bar_melody
  %74 = getelementptr i8*, i8** %first_bar_melody58, i32 1
  %temp59 = load i8*, i8** %74
  %75 = getelementptr i8*, i8** %71, i32 1
  store i8* %temp59, i8** %75
  %first_bar_melody60 = load i8**, i8*** %first_bar_melody
  %76 = getelementptr i8*, i8** %first_bar_melody60, i32 2
  %temp61 = load i8*, i8** %76
  %77 = getelementptr i8*, i8** %71, i32 2
  store i8* %temp61, i8** %77
  %first_bar_melody62 = load i8**, i8*** %first_bar_melody
  %78 = getelementptr i8*, i8** %first_bar_melody62, i32 3
  %temp63 = load i8*, i8** %78
  %79 = getelementptr i8*, i8** %71, i32 3
  store i8* %temp63, i8** %79
  %first_bar_melody64 = load i8**, i8*** %first_bar_melody
  %80 = getelementptr i8*, i8** %first_bar_melody64, i32 4
  %temp65 = load i8*, i8** %80
  %81 = getelementptr i8*, i8** %71, i32 4
  store i8* %temp65, i8** %81
  %first_bar_melody66 = load i8**, i8*** %first_bar_melody
  %82 = getelementptr i8*, i8** %first_bar_melody66, i32 5
  %temp67 = load i8*, i8** %82
  %83 = getelementptr i8*, i8** %71, i32 5
  store i8* %temp67, i8** %83
  %second_bar_melody68 = load i8**, i8*** %second_bar_melody
  %84 = getelementptr i8*, i8** %second_bar_melody68, i32 0
  %temp69 = load i8*, i8** %84
  %85 = getelementptr i8*, i8** %71, i32 6
  store i8* %temp69, i8** %85
  %second_bar_melody70 = load i8**, i8*** %second_bar_melody
  %86 = getelementptr i8*, i8** %second_bar_melody70, i32 1
  %temp71 = load i8*, i8** %86
  %87 = getelementptr i8*, i8** %71, i32 7
  store i8* %temp71, i8** %87
  %second_bar_melody72 = load i8**, i8*** %second_bar_melody
  %88 = getelementptr i8*, i8** %second_bar_melody72, i32 2
  %temp73 = load i8*, i8** %88
  %89 = getelementptr i8*, i8** %71, i32 8
  store i8* %temp73, i8** %89
  %second_bar_melody74 = load i8**, i8*** %second_bar_melody
  %90 = getelementptr i8*, i8** %second_bar_melody74, i32 3
  %temp75 = load i8*, i8** %90
  %91 = getelementptr i8*, i8** %71, i32 9
  store i8* %temp75, i8** %91
  %second_bar_melody76 = load i8**, i8*** %second_bar_melody
  %92 = getelementptr i8*, i8** %second_bar_melody76, i32 4
  %temp77 = load i8*, i8** %92
  %93 = getelementptr i8*, i8** %71, i32 10
  store i8* %temp77, i8** %93
  %94 = getelementptr i8*, i8** %71, i32 2
  %temp78 = load i8*, i8** %94
  %95 = getelementptr i8*, i8** %16, i32 4
  store i8* %temp78, i8** %95
  %malloccall79 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 11))
  %96 = bitcast i8* %malloccall79 to i8**
  %first_bar_melody80 = load i8**, i8*** %first_bar_melody
  %97 = getelementptr i8*, i8** %first_bar_melody80, i32 0
  %temp81 = load i8*, i8** %97
  %98 = getelementptr i8*, i8** %96, i32 0
  store i8* %temp81, i8** %98
  %first_bar_melody82 = load i8**, i8*** %first_bar_melody
  %99 = getelementptr i8*, i8** %first_bar_melody82, i32 1
  %temp83 = load i8*, i8** %99
  %100 = getelementptr i8*, i8** %96, i32 1
  store i8* %temp83, i8** %100
  %first_bar_melody84 = load i8**, i8*** %first_bar_melody
  %101 = getelementptr i8*, i8** %first_bar_melody84, i32 2
  %temp85 = load i8*, i8** %101
  %102 = getelementptr i8*, i8** %96, i32 2
  store i8* %temp85, i8** %102
  %first_bar_melody86 = load i8**, i8*** %first_bar_melody
  %103 = getelementptr i8*, i8** %first_bar_melody86, i32 3
  %temp87 = load i8*, i8** %103
  %104 = getelementptr i8*, i8** %96, i32 3
  store i8* %temp87, i8** %104
  %first_bar_melody88 = load i8**, i8*** %first_bar_melody
  %105 = getelementptr i8*, i8** %first_bar_melody88, i32 4
  %temp89 = load i8*, i8** %105
  %106 = getelementptr i8*, i8** %96, i32 4
  store i8* %temp89, i8** %106
  %first_bar_melody90 = load i8**, i8*** %first_bar_melody
  %107 = getelementptr i8*, i8** %first_bar_melody90, i32 5
  %temp91 = load i8*, i8** %107
  %108 = getelementptr i8*, i8** %96, i32 5
  store i8* %temp91, i8** %108
  %second_bar_melody92 = load i8**, i8*** %second_bar_melody
  %109 = getelementptr i8*, i8** %second_bar_melody92, i32 0
  %temp93 = load i8*, i8** %109
  %110 = getelementptr i8*, i8** %96, i32 6
  store i8* %temp93, i8** %110
  %second_bar_melody94 = load i8**, i8*** %second_bar_melody
  %111 = getelementptr i8*, i8** %second_bar_melody94, i32 1
  %temp95 = load i8*, i8** %111
  %112 = getelementptr i8*, i8** %96, i32 7
  store i8* %temp95, i8** %112
  %second_bar_melody96 = load i8**, i8*** %second_bar_melody
  %113 = getelementptr i8*, i8** %second_bar_melody96, i32 2
  %temp97 = load i8*, i8** %113
  %114 = getelementptr i8*, i8** %96, i32 8
  store i8* %temp97, i8** %114
  %second_bar_melody98 = load i8**, i8*** %second_bar_melody
  %115 = getelementptr i8*, i8** %second_bar_melody98, i32 3
  %temp99 = load i8*, i8** %115
  %116 = getelementptr i8*, i8** %96, i32 9
  store i8* %temp99, i8** %116
  %second_bar_melody100 = load i8**, i8*** %second_bar_melody
  %117 = getelementptr i8*, i8** %second_bar_melody100, i32 4
  %temp101 = load i8*, i8** %117
  %118 = getelementptr i8*, i8** %96, i32 10
  store i8* %temp101, i8** %118
  %119 = getelementptr i8*, i8** %96, i32 3
  %temp102 = load i8*, i8** %119
  %120 = getelementptr i8*, i8** %16, i32 5
  store i8* %temp102, i8** %120
  %malloccall103 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 11))
  %121 = bitcast i8* %malloccall103 to i8**
  %first_bar_melody104 = load i8**, i8*** %first_bar_melody
  %122 = getelementptr i8*, i8** %first_bar_melody104, i32 0
  %temp105 = load i8*, i8** %122
  %123 = getelementptr i8*, i8** %121, i32 0
  store i8* %temp105, i8** %123
  %first_bar_melody106 = load i8**, i8*** %first_bar_melody
  %124 = getelementptr i8*, i8** %first_bar_melody106, i32 1
  %temp107 = load i8*, i8** %124
  %125 = getelementptr i8*, i8** %121, i32 1
  store i8* %temp107, i8** %125
  %first_bar_melody108 = load i8**, i8*** %first_bar_melody
  %126 = getelementptr i8*, i8** %first_bar_melody108, i32 2
  %temp109 = load i8*, i8** %126
  %127 = getelementptr i8*, i8** %121, i32 2
  store i8* %temp109, i8** %127
  %first_bar_melody110 = load i8**, i8*** %first_bar_melody
  %128 = getelementptr i8*, i8** %first_bar_melody110, i32 3
  %temp111 = load i8*, i8** %128
  %129 = getelementptr i8*, i8** %121, i32 3
  store i8* %temp111, i8** %129
  %first_bar_melody112 = load i8**, i8*** %first_bar_melody
  %130 = getelementptr i8*, i8** %first_bar_melody112, i32 4
  %temp113 = load i8*, i8** %130
  %131 = getelementptr i8*, i8** %121, i32 4
  store i8* %temp113, i8** %131
  %first_bar_melody114 = load i8**, i8*** %first_bar_melody
  %132 = getelementptr i8*, i8** %first_bar_melody114, i32 5
  %temp115 = load i8*, i8** %132
  %133 = getelementptr i8*, i8** %121, i32 5
  store i8* %temp115, i8** %133
  %second_bar_melody116 = load i8**, i8*** %second_bar_melody
  %134 = getelementptr i8*, i8** %second_bar_melody116, i32 0
  %temp117 = load i8*, i8** %134
  %135 = getelementptr i8*, i8** %121, i32 6
  store i8* %temp117, i8** %135
  %second_bar_melody118 = load i8**, i8*** %second_bar_melody
  %136 = getelementptr i8*, i8** %second_bar_melody118, i32 1
  %temp119 = load i8*, i8** %136
  %137 = getelementptr i8*, i8** %121, i32 7
  store i8* %temp119, i8** %137
  %second_bar_melody120 = load i8**, i8*** %second_bar_melody
  %138 = getelementptr i8*, i8** %second_bar_melody120, i32 2
  %temp121 = load i8*, i8** %138
  %139 = getelementptr i8*, i8** %121, i32 8
  store i8* %temp121, i8** %139
  %second_bar_melody122 = load i8**, i8*** %second_bar_melody
  %140 = getelementptr i8*, i8** %second_bar_melody122, i32 3
  %temp123 = load i8*, i8** %140
  %141 = getelementptr i8*, i8** %121, i32 9
  store i8* %temp123, i8** %141
  %second_bar_melody124 = load i8**, i8*** %second_bar_melody
  %142 = getelementptr i8*, i8** %second_bar_melody124, i32 4
  %temp125 = load i8*, i8** %142
  %143 = getelementptr i8*, i8** %121, i32 10
  store i8* %temp125, i8** %143
  %144 = getelementptr i8*, i8** %121, i32 4
  %temp126 = load i8*, i8** %144
  %145 = getelementptr i8*, i8** %16, i32 6
  store i8* %temp126, i8** %145
  %malloccall127 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 11))
  %146 = bitcast i8* %malloccall127 to i8**
  %first_bar_melody128 = load i8**, i8*** %first_bar_melody
  %147 = getelementptr i8*, i8** %first_bar_melody128, i32 0
  %temp129 = load i8*, i8** %147
  %148 = getelementptr i8*, i8** %146, i32 0
  store i8* %temp129, i8** %148
  %first_bar_melody130 = load i8**, i8*** %first_bar_melody
  %149 = getelementptr i8*, i8** %first_bar_melody130, i32 1
  %temp131 = load i8*, i8** %149
  %150 = getelementptr i8*, i8** %146, i32 1
  store i8* %temp131, i8** %150
  %first_bar_melody132 = load i8**, i8*** %first_bar_melody
  %151 = getelementptr i8*, i8** %first_bar_melody132, i32 2
  %temp133 = load i8*, i8** %151
  %152 = getelementptr i8*, i8** %146, i32 2
  store i8* %temp133, i8** %152
  %first_bar_melody134 = load i8**, i8*** %first_bar_melody
  %153 = getelementptr i8*, i8** %first_bar_melody134, i32 3
  %temp135 = load i8*, i8** %153
  %154 = getelementptr i8*, i8** %146, i32 3
  store i8* %temp135, i8** %154
  %first_bar_melody136 = load i8**, i8*** %first_bar_melody
  %155 = getelementptr i8*, i8** %first_bar_melody136, i32 4
  %temp137 = load i8*, i8** %155
  %156 = getelementptr i8*, i8** %146, i32 4
  store i8* %temp137, i8** %156
  %first_bar_melody138 = load i8**, i8*** %first_bar_melody
  %157 = getelementptr i8*, i8** %first_bar_melody138, i32 5
  %temp139 = load i8*, i8** %157
  %158 = getelementptr i8*, i8** %146, i32 5
  store i8* %temp139, i8** %158
  %second_bar_melody140 = load i8**, i8*** %second_bar_melody
  %159 = getelementptr i8*, i8** %second_bar_melody140, i32 0
  %temp141 = load i8*, i8** %159
  %160 = getelementptr i8*, i8** %146, i32 6
  store i8* %temp141, i8** %160
  %second_bar_melody142 = load i8**, i8*** %second_bar_melody
  %161 = getelementptr i8*, i8** %second_bar_melody142, i32 1
  %temp143 = load i8*, i8** %161
  %162 = getelementptr i8*, i8** %146, i32 7
  store i8* %temp143, i8** %162
  %second_bar_melody144 = load i8**, i8*** %second_bar_melody
  %163 = getelementptr i8*, i8** %second_bar_melody144, i32 2
  %temp145 = load i8*, i8** %163
  %164 = getelementptr i8*, i8** %146, i32 8
  store i8* %temp145, i8** %164
  %second_bar_melody146 = load i8**, i8*** %second_bar_melody
  %165 = getelementptr i8*, i8** %second_bar_melody146, i32 3
  %temp147 = load i8*, i8** %165
  %166 = getelementptr i8*, i8** %146, i32 9
  store i8* %temp147, i8** %166
  %second_bar_melody148 = load i8**, i8*** %second_bar_melody
  %167 = getelementptr i8*, i8** %second_bar_melody148, i32 4
  %temp149 = load i8*, i8** %167
  %168 = getelementptr i8*, i8** %146, i32 10
  store i8* %temp149, i8** %168
  %169 = getelementptr i8*, i8** %146, i32 5
  %temp150 = load i8*, i8** %169
  %170 = getelementptr i8*, i8** %16, i32 7
  store i8* %temp150, i8** %170
  %malloccall151 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 11))
  %171 = bitcast i8* %malloccall151 to i8**
  %first_bar_melody152 = load i8**, i8*** %first_bar_melody
  %172 = getelementptr i8*, i8** %first_bar_melody152, i32 0
  %temp153 = load i8*, i8** %172
  %173 = getelementptr i8*, i8** %171, i32 0
  store i8* %temp153, i8** %173
  %first_bar_melody154 = load i8**, i8*** %first_bar_melody
  %174 = getelementptr i8*, i8** %first_bar_melody154, i32 1
  %temp155 = load i8*, i8** %174
  %175 = getelementptr i8*, i8** %171, i32 1
  store i8* %temp155, i8** %175
  %first_bar_melody156 = load i8**, i8*** %first_bar_melody
  %176 = getelementptr i8*, i8** %first_bar_melody156, i32 2
  %temp157 = load i8*, i8** %176
  %177 = getelementptr i8*, i8** %171, i32 2
  store i8* %temp157, i8** %177
  %first_bar_melody158 = load i8**, i8*** %first_bar_melody
  %178 = getelementptr i8*, i8** %first_bar_melody158, i32 3
  %temp159 = load i8*, i8** %178
  %179 = getelementptr i8*, i8** %171, i32 3
  store i8* %temp159, i8** %179
  %first_bar_melody160 = load i8**, i8*** %first_bar_melody
  %180 = getelementptr i8*, i8** %first_bar_melody160, i32 4
  %temp161 = load i8*, i8** %180
  %181 = getelementptr i8*, i8** %171, i32 4
  store i8* %temp161, i8** %181
  %first_bar_melody162 = load i8**, i8*** %first_bar_melody
  %182 = getelementptr i8*, i8** %first_bar_melody162, i32 5
  %temp163 = load i8*, i8** %182
  %183 = getelementptr i8*, i8** %171, i32 5
  store i8* %temp163, i8** %183
  %second_bar_melody164 = load i8**, i8*** %second_bar_melody
  %184 = getelementptr i8*, i8** %second_bar_melody164, i32 0
  %temp165 = load i8*, i8** %184
  %185 = getelementptr i8*, i8** %171, i32 6
  store i8* %temp165, i8** %185
  %second_bar_melody166 = load i8**, i8*** %second_bar_melody
  %186 = getelementptr i8*, i8** %second_bar_melody166, i32 1
  %temp167 = load i8*, i8** %186
  %187 = getelementptr i8*, i8** %171, i32 7
  store i8* %temp167, i8** %187
  %second_bar_melody168 = load i8**, i8*** %second_bar_melody
  %188 = getelementptr i8*, i8** %second_bar_melody168, i32 2
  %temp169 = load i8*, i8** %188
  %189 = getelementptr i8*, i8** %171, i32 8
  store i8* %temp169, i8** %189
  %second_bar_melody170 = load i8**, i8*** %second_bar_melody
  %190 = getelementptr i8*, i8** %second_bar_melody170, i32 3
  %temp171 = load i8*, i8** %190
  %191 = getelementptr i8*, i8** %171, i32 9
  store i8* %temp171, i8** %191
  %second_bar_melody172 = load i8**, i8*** %second_bar_melody
  %192 = getelementptr i8*, i8** %second_bar_melody172, i32 4
  %temp173 = load i8*, i8** %192
  %193 = getelementptr i8*, i8** %171, i32 10
  store i8* %temp173, i8** %193
  %194 = getelementptr i8*, i8** %171, i32 6
  %temp174 = load i8*, i8** %194
  %195 = getelementptr i8*, i8** %16, i32 8
  store i8* %temp174, i8** %195
  %malloccall175 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 11))
  %196 = bitcast i8* %malloccall175 to i8**
  %first_bar_melody176 = load i8**, i8*** %first_bar_melody
  %197 = getelementptr i8*, i8** %first_bar_melody176, i32 0
  %temp177 = load i8*, i8** %197
  %198 = getelementptr i8*, i8** %196, i32 0
  store i8* %temp177, i8** %198
  %first_bar_melody178 = load i8**, i8*** %first_bar_melody
  %199 = getelementptr i8*, i8** %first_bar_melody178, i32 1
  %temp179 = load i8*, i8** %199
  %200 = getelementptr i8*, i8** %196, i32 1
  store i8* %temp179, i8** %200
  %first_bar_melody180 = load i8**, i8*** %first_bar_melody
  %201 = getelementptr i8*, i8** %first_bar_melody180, i32 2
  %temp181 = load i8*, i8** %201
  %202 = getelementptr i8*, i8** %196, i32 2
  store i8* %temp181, i8** %202
  %first_bar_melody182 = load i8**, i8*** %first_bar_melody
  %203 = getelementptr i8*, i8** %first_bar_melody182, i32 3
  %temp183 = load i8*, i8** %203
  %204 = getelementptr i8*, i8** %196, i32 3
  store i8* %temp183, i8** %204
  %first_bar_melody184 = load i8**, i8*** %first_bar_melody
  %205 = getelementptr i8*, i8** %first_bar_melody184, i32 4
  %temp185 = load i8*, i8** %205
  %206 = getelementptr i8*, i8** %196, i32 4
  store i8* %temp185, i8** %206
  %first_bar_melody186 = load i8**, i8*** %first_bar_melody
  %207 = getelementptr i8*, i8** %first_bar_melody186, i32 5
  %temp187 = load i8*, i8** %207
  %208 = getelementptr i8*, i8** %196, i32 5
  store i8* %temp187, i8** %208
  %second_bar_melody188 = load i8**, i8*** %second_bar_melody
  %209 = getelementptr i8*, i8** %second_bar_melody188, i32 0
  %temp189 = load i8*, i8** %209
  %210 = getelementptr i8*, i8** %196, i32 6
  store i8* %temp189, i8** %210
  %second_bar_melody190 = load i8**, i8*** %second_bar_melody
  %211 = getelementptr i8*, i8** %second_bar_melody190, i32 1
  %temp191 = load i8*, i8** %211
  %212 = getelementptr i8*, i8** %196, i32 7
  store i8* %temp191, i8** %212
  %second_bar_melody192 = load i8**, i8*** %second_bar_melody
  %213 = getelementptr i8*, i8** %second_bar_melody192, i32 2
  %temp193 = load i8*, i8** %213
  %214 = getelementptr i8*, i8** %196, i32 8
  store i8* %temp193, i8** %214
  %second_bar_melody194 = load i8**, i8*** %second_bar_melody
  %215 = getelementptr i8*, i8** %second_bar_melody194, i32 3
  %temp195 = load i8*, i8** %215
  %216 = getelementptr i8*, i8** %196, i32 9
  store i8* %temp195, i8** %216
  %second_bar_melody196 = load i8**, i8*** %second_bar_melody
  %217 = getelementptr i8*, i8** %second_bar_melody196, i32 4
  %temp197 = load i8*, i8** %217
  %218 = getelementptr i8*, i8** %196, i32 10
  store i8* %temp197, i8** %218
  %219 = getelementptr i8*, i8** %196, i32 7
  %temp198 = load i8*, i8** %219
  %220 = getelementptr i8*, i8** %16, i32 9
  store i8* %temp198, i8** %220
  %malloccall199 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 11))
  %221 = bitcast i8* %malloccall199 to i8**
  %first_bar_melody200 = load i8**, i8*** %first_bar_melody
  %222 = getelementptr i8*, i8** %first_bar_melody200, i32 0
  %temp201 = load i8*, i8** %222
  %223 = getelementptr i8*, i8** %221, i32 0
  store i8* %temp201, i8** %223
  %first_bar_melody202 = load i8**, i8*** %first_bar_melody
  %224 = getelementptr i8*, i8** %first_bar_melody202, i32 1
  %temp203 = load i8*, i8** %224
  %225 = getelementptr i8*, i8** %221, i32 1
  store i8* %temp203, i8** %225
  %first_bar_melody204 = load i8**, i8*** %first_bar_melody
  %226 = getelementptr i8*, i8** %first_bar_melody204, i32 2
  %temp205 = load i8*, i8** %226
  %227 = getelementptr i8*, i8** %221, i32 2
  store i8* %temp205, i8** %227
  %first_bar_melody206 = load i8**, i8*** %first_bar_melody
  %228 = getelementptr i8*, i8** %first_bar_melody206, i32 3
  %temp207 = load i8*, i8** %228
  %229 = getelementptr i8*, i8** %221, i32 3
  store i8* %temp207, i8** %229
  %first_bar_melody208 = load i8**, i8*** %first_bar_melody
  %230 = getelementptr i8*, i8** %first_bar_melody208, i32 4
  %temp209 = load i8*, i8** %230
  %231 = getelementptr i8*, i8** %221, i32 4
  store i8* %temp209, i8** %231
  %first_bar_melody210 = load i8**, i8*** %first_bar_melody
  %232 = getelementptr i8*, i8** %first_bar_melody210, i32 5
  %temp211 = load i8*, i8** %232
  %233 = getelementptr i8*, i8** %221, i32 5
  store i8* %temp211, i8** %233
  %second_bar_melody212 = load i8**, i8*** %second_bar_melody
  %234 = getelementptr i8*, i8** %second_bar_melody212, i32 0
  %temp213 = load i8*, i8** %234
  %235 = getelementptr i8*, i8** %221, i32 6
  store i8* %temp213, i8** %235
  %second_bar_melody214 = load i8**, i8*** %second_bar_melody
  %236 = getelementptr i8*, i8** %second_bar_melody214, i32 1
  %temp215 = load i8*, i8** %236
  %237 = getelementptr i8*, i8** %221, i32 7
  store i8* %temp215, i8** %237
  %second_bar_melody216 = load i8**, i8*** %second_bar_melody
  %238 = getelementptr i8*, i8** %second_bar_melody216, i32 2
  %temp217 = load i8*, i8** %238
  %239 = getelementptr i8*, i8** %221, i32 8
  store i8* %temp217, i8** %239
  %second_bar_melody218 = load i8**, i8*** %second_bar_melody
  %240 = getelementptr i8*, i8** %second_bar_melody218, i32 3
  %temp219 = load i8*, i8** %240
  %241 = getelementptr i8*, i8** %221, i32 9
  store i8* %temp219, i8** %241
  %second_bar_melody220 = load i8**, i8*** %second_bar_melody
  %242 = getelementptr i8*, i8** %second_bar_melody220, i32 4
  %temp221 = load i8*, i8** %242
  %243 = getelementptr i8*, i8** %221, i32 10
  store i8* %temp221, i8** %243
  %244 = getelementptr i8*, i8** %221, i32 8
  %temp222 = load i8*, i8** %244
  %245 = getelementptr i8*, i8** %16, i32 10
  store i8* %temp222, i8** %245
  %malloccall223 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 11))
  %246 = bitcast i8* %malloccall223 to i8**
  %first_bar_melody224 = load i8**, i8*** %first_bar_melody
  %247 = getelementptr i8*, i8** %first_bar_melody224, i32 0
  %temp225 = load i8*, i8** %247
  %248 = getelementptr i8*, i8** %246, i32 0
  store i8* %temp225, i8** %248
  %first_bar_melody226 = load i8**, i8*** %first_bar_melody
  %249 = getelementptr i8*, i8** %first_bar_melody226, i32 1
  %temp227 = load i8*, i8** %249
  %250 = getelementptr i8*, i8** %246, i32 1
  store i8* %temp227, i8** %250
  %first_bar_melody228 = load i8**, i8*** %first_bar_melody
  %251 = getelementptr i8*, i8** %first_bar_melody228, i32 2
  %temp229 = load i8*, i8** %251
  %252 = getelementptr i8*, i8** %246, i32 2
  store i8* %temp229, i8** %252
  %first_bar_melody230 = load i8**, i8*** %first_bar_melody
  %253 = getelementptr i8*, i8** %first_bar_melody230, i32 3
  %temp231 = load i8*, i8** %253
  %254 = getelementptr i8*, i8** %246, i32 3
  store i8* %temp231, i8** %254
  %first_bar_melody232 = load i8**, i8*** %first_bar_melody
  %255 = getelementptr i8*, i8** %first_bar_melody232, i32 4
  %temp233 = load i8*, i8** %255
  %256 = getelementptr i8*, i8** %246, i32 4
  store i8* %temp233, i8** %256
  %first_bar_melody234 = load i8**, i8*** %first_bar_melody
  %257 = getelementptr i8*, i8** %first_bar_melody234, i32 5
  %temp235 = load i8*, i8** %257
  %258 = getelementptr i8*, i8** %246, i32 5
  store i8* %temp235, i8** %258
  %second_bar_melody236 = load i8**, i8*** %second_bar_melody
  %259 = getelementptr i8*, i8** %second_bar_melody236, i32 0
  %temp237 = load i8*, i8** %259
  %260 = getelementptr i8*, i8** %246, i32 6
  store i8* %temp237, i8** %260
  %second_bar_melody238 = load i8**, i8*** %second_bar_melody
  %261 = getelementptr i8*, i8** %second_bar_melody238, i32 1
  %temp239 = load i8*, i8** %261
  %262 = getelementptr i8*, i8** %246, i32 7
  store i8* %temp239, i8** %262
  %second_bar_melody240 = load i8**, i8*** %second_bar_melody
  %263 = getelementptr i8*, i8** %second_bar_melody240, i32 2
  %temp241 = load i8*, i8** %263
  %264 = getelementptr i8*, i8** %246, i32 8
  store i8* %temp241, i8** %264
  %second_bar_melody242 = load i8**, i8*** %second_bar_melody
  %265 = getelementptr i8*, i8** %second_bar_melody242, i32 3
  %temp243 = load i8*, i8** %265
  %266 = getelementptr i8*, i8** %246, i32 9
  store i8* %temp243, i8** %266
  %second_bar_melody244 = load i8**, i8*** %second_bar_melody
  %267 = getelementptr i8*, i8** %second_bar_melody244, i32 4
  %temp245 = load i8*, i8** %267
  %268 = getelementptr i8*, i8** %246, i32 10
  store i8* %temp245, i8** %268
  %269 = getelementptr i8*, i8** %246, i32 9
  %temp246 = load i8*, i8** %269
  %270 = getelementptr i8*, i8** %16, i32 11
  store i8* %temp246, i8** %270
  %malloccall247 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 11))
  %271 = bitcast i8* %malloccall247 to i8**
  %first_bar_melody248 = load i8**, i8*** %first_bar_melody
  %272 = getelementptr i8*, i8** %first_bar_melody248, i32 0
  %temp249 = load i8*, i8** %272
  %273 = getelementptr i8*, i8** %271, i32 0
  store i8* %temp249, i8** %273
  %first_bar_melody250 = load i8**, i8*** %first_bar_melody
  %274 = getelementptr i8*, i8** %first_bar_melody250, i32 1
  %temp251 = load i8*, i8** %274
  %275 = getelementptr i8*, i8** %271, i32 1
  store i8* %temp251, i8** %275
  %first_bar_melody252 = load i8**, i8*** %first_bar_melody
  %276 = getelementptr i8*, i8** %first_bar_melody252, i32 2
  %temp253 = load i8*, i8** %276
  %277 = getelementptr i8*, i8** %271, i32 2
  store i8* %temp253, i8** %277
  %first_bar_melody254 = load i8**, i8*** %first_bar_melody
  %278 = getelementptr i8*, i8** %first_bar_melody254, i32 3
  %temp255 = load i8*, i8** %278
  %279 = getelementptr i8*, i8** %271, i32 3
  store i8* %temp255, i8** %279
  %first_bar_melody256 = load i8**, i8*** %first_bar_melody
  %280 = getelementptr i8*, i8** %first_bar_melody256, i32 4
  %temp257 = load i8*, i8** %280
  %281 = getelementptr i8*, i8** %271, i32 4
  store i8* %temp257, i8** %281
  %first_bar_melody258 = load i8**, i8*** %first_bar_melody
  %282 = getelementptr i8*, i8** %first_bar_melody258, i32 5
  %temp259 = load i8*, i8** %282
  %283 = getelementptr i8*, i8** %271, i32 5
  store i8* %temp259, i8** %283
  %second_bar_melody260 = load i8**, i8*** %second_bar_melody
  %284 = getelementptr i8*, i8** %second_bar_melody260, i32 0
  %temp261 = load i8*, i8** %284
  %285 = getelementptr i8*, i8** %271, i32 6
  store i8* %temp261, i8** %285
  %second_bar_melody262 = load i8**, i8*** %second_bar_melody
  %286 = getelementptr i8*, i8** %second_bar_melody262, i32 1
  %temp263 = load i8*, i8** %286
  %287 = getelementptr i8*, i8** %271, i32 7
  store i8* %temp263, i8** %287
  %second_bar_melody264 = load i8**, i8*** %second_bar_melody
  %288 = getelementptr i8*, i8** %second_bar_melody264, i32 2
  %temp265 = load i8*, i8** %288
  %289 = getelementptr i8*, i8** %271, i32 8
  store i8* %temp265, i8** %289
  %second_bar_melody266 = load i8**, i8*** %second_bar_melody
  %290 = getelementptr i8*, i8** %second_bar_melody266, i32 3
  %temp267 = load i8*, i8** %290
  %291 = getelementptr i8*, i8** %271, i32 9
  store i8* %temp267, i8** %291
  %second_bar_melody268 = load i8**, i8*** %second_bar_melody
  %292 = getelementptr i8*, i8** %second_bar_melody268, i32 4
  %temp269 = load i8*, i8** %292
  %293 = getelementptr i8*, i8** %271, i32 10
  store i8* %temp269, i8** %293
  %294 = getelementptr i8*, i8** %271, i32 10
  %temp270 = load i8*, i8** %294
  %295 = getelementptr i8*, i8** %16, i32 12
  store i8* %temp270, i8** %295
  store i8** %16, i8*** %melody
  ret i32 0
}

declare noalias i8* @malloc(i32)
