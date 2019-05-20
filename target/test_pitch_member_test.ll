; ModuleID = 'CAML'
source_filename = "CAML"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"123" = private unnamed_addr constant [12 x i8] c"track_start\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"4#" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"4#.6" = private unnamed_addr constant [4 x i8] c"1^4\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @puts(i8*, ...)

declare i32 @pitch_to_int(i8*, ...)

declare i32 @ran(i32, ...)

declare i32 @up_8(i8*, ...)

declare i32 @down_8(i8*, ...)

define void @generate_music({ i32*, i8**, i32, i32 } %t) {
entry:
  %t1 = alloca { i32*, i8**, i32, i32 }
  store { i32*, i8**, i32, i32 } %t, { i32*, i8**, i32, i32 }* %t1
  %i = alloca i32
  %prints = call i32 (i8*, ...) @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"123", i32 0, i32 0))
  %struct.ptr = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %t1, i32 0, i32 3
  %struct.val.instrument = load i32, i32* %struct.ptr
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %struct.val.instrument)
  %struct.ptr2 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %t1, i32 0, i32 2
  %struct.val.size = load i32, i32* %struct.ptr2
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %struct.val.size)
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i11 = load i32, i32* %i
  %struct.ptr12 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %t1, i32 0, i32 2
  %struct.val.size13 = load i32, i32* %struct.ptr12
  %tmp14 = icmp slt i32 %i11, %struct.val.size13
  br i1 %tmp14, label %while_body, label %merge

while_body:                                       ; preds = %while
  %struct.ptr4 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %t1, i32 0, i32 1
  %struct.val.melody = load i8**, i8*** %struct.ptr4
  %i5 = load i32, i32* %i
  %0 = getelementptr i8*, i8** %struct.val.melody, i32 %i5
  %1 = load i8*, i8** %0
  %pitchtoint = call i32 (i8*, ...) @pitch_to_int(i8* %1)
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %pitchtoint)
  %struct.ptr7 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %t1, i32 0, i32 0
  %struct.val.rhythm = load i32*, i32** %struct.ptr7
  %i8 = load i32, i32* %i
  %2 = getelementptr i32, i32* %struct.val.rhythm, i32 %i8
  %3 = load i32, i32* %2
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %3)
  %i10 = load i32, i32* %i
  %tmp = add i32 %i10, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  ret void
}

define { i32*, i8**, i32, i32 } @build_track(i32 %instrument, i32 %size, i8** %melody, i32* %rhythm) {
entry:
  %instrument1 = alloca i32
  store i32 %instrument, i32* %instrument1
  %size2 = alloca i32
  store i32 %size, i32* %size2
  %melody3 = alloca i8**
  store i8** %melody, i8*** %melody3
  %rhythm4 = alloca i32*
  store i32* %rhythm, i32** %rhythm4
  %res = alloca { i32*, i8**, i32, i32 }
  %i = alloca i32
  %new_melody = alloca i8**
  %new_rhythm = alloca i32*
  %melody5 = load i8**, i8*** %melody3
  %0 = getelementptr i8*, i8** %melody5, i32 0
  %1 = load i8*, i8** %0
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %2 = bitcast i8* %malloccall to i8**
  %3 = getelementptr i8*, i8** %2, i32 0
  store i8* %1, i8** %3
  store i8** %2, i8*** %new_melody
  %rhythm6 = load i32*, i32** %rhythm4
  %4 = getelementptr i32, i32* %rhythm6, i32 0
  %5 = load i32, i32* %4
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %6 = bitcast i8* %malloccall7 to i32*
  %7 = getelementptr i32, i32* %6, i32 0
  store i32 %5, i32* %7
  store i32* %6, i32** %new_rhythm
  store i32 1, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i222 = load i32, i32* %i
  %size223 = load i32, i32* %size2
  %tmp224 = icmp slt i32 %i222, %size223
  br i1 %tmp224, label %while_body, label %merge

while_body:                                       ; preds = %while
  %malloccall8 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 51))
  %8 = bitcast i8* %malloccall8 to i8**
  %new_melody9 = load i8**, i8*** %new_melody
  %9 = getelementptr i8*, i8** %new_melody9, i32 0
  %temp = load i8*, i8** %9
  %10 = getelementptr i8*, i8** %8, i32 0
  store i8* %temp, i8** %10
  %new_melody10 = load i8**, i8*** %new_melody
  %11 = getelementptr i8*, i8** %new_melody10, i32 1
  %temp11 = load i8*, i8** %11
  %12 = getelementptr i8*, i8** %8, i32 1
  store i8* %temp11, i8** %12
  %new_melody12 = load i8**, i8*** %new_melody
  %13 = getelementptr i8*, i8** %new_melody12, i32 2
  %temp13 = load i8*, i8** %13
  %14 = getelementptr i8*, i8** %8, i32 2
  store i8* %temp13, i8** %14
  %new_melody14 = load i8**, i8*** %new_melody
  %15 = getelementptr i8*, i8** %new_melody14, i32 3
  %temp15 = load i8*, i8** %15
  %16 = getelementptr i8*, i8** %8, i32 3
  store i8* %temp15, i8** %16
  %new_melody16 = load i8**, i8*** %new_melody
  %17 = getelementptr i8*, i8** %new_melody16, i32 4
  %temp17 = load i8*, i8** %17
  %18 = getelementptr i8*, i8** %8, i32 4
  store i8* %temp17, i8** %18
  %new_melody18 = load i8**, i8*** %new_melody
  %19 = getelementptr i8*, i8** %new_melody18, i32 5
  %temp19 = load i8*, i8** %19
  %20 = getelementptr i8*, i8** %8, i32 5
  store i8* %temp19, i8** %20
  %new_melody20 = load i8**, i8*** %new_melody
  %21 = getelementptr i8*, i8** %new_melody20, i32 6
  %temp21 = load i8*, i8** %21
  %22 = getelementptr i8*, i8** %8, i32 6
  store i8* %temp21, i8** %22
  %new_melody22 = load i8**, i8*** %new_melody
  %23 = getelementptr i8*, i8** %new_melody22, i32 7
  %temp23 = load i8*, i8** %23
  %24 = getelementptr i8*, i8** %8, i32 7
  store i8* %temp23, i8** %24
  %new_melody24 = load i8**, i8*** %new_melody
  %25 = getelementptr i8*, i8** %new_melody24, i32 8
  %temp25 = load i8*, i8** %25
  %26 = getelementptr i8*, i8** %8, i32 8
  store i8* %temp25, i8** %26
  %new_melody26 = load i8**, i8*** %new_melody
  %27 = getelementptr i8*, i8** %new_melody26, i32 9
  %temp27 = load i8*, i8** %27
  %28 = getelementptr i8*, i8** %8, i32 9
  store i8* %temp27, i8** %28
  %new_melody28 = load i8**, i8*** %new_melody
  %29 = getelementptr i8*, i8** %new_melody28, i32 10
  %temp29 = load i8*, i8** %29
  %30 = getelementptr i8*, i8** %8, i32 10
  store i8* %temp29, i8** %30
  %new_melody30 = load i8**, i8*** %new_melody
  %31 = getelementptr i8*, i8** %new_melody30, i32 11
  %temp31 = load i8*, i8** %31
  %32 = getelementptr i8*, i8** %8, i32 11
  store i8* %temp31, i8** %32
  %new_melody32 = load i8**, i8*** %new_melody
  %33 = getelementptr i8*, i8** %new_melody32, i32 12
  %temp33 = load i8*, i8** %33
  %34 = getelementptr i8*, i8** %8, i32 12
  store i8* %temp33, i8** %34
  %new_melody34 = load i8**, i8*** %new_melody
  %35 = getelementptr i8*, i8** %new_melody34, i32 13
  %temp35 = load i8*, i8** %35
  %36 = getelementptr i8*, i8** %8, i32 13
  store i8* %temp35, i8** %36
  %new_melody36 = load i8**, i8*** %new_melody
  %37 = getelementptr i8*, i8** %new_melody36, i32 14
  %temp37 = load i8*, i8** %37
  %38 = getelementptr i8*, i8** %8, i32 14
  store i8* %temp37, i8** %38
  %new_melody38 = load i8**, i8*** %new_melody
  %39 = getelementptr i8*, i8** %new_melody38, i32 15
  %temp39 = load i8*, i8** %39
  %40 = getelementptr i8*, i8** %8, i32 15
  store i8* %temp39, i8** %40
  %new_melody40 = load i8**, i8*** %new_melody
  %41 = getelementptr i8*, i8** %new_melody40, i32 16
  %temp41 = load i8*, i8** %41
  %42 = getelementptr i8*, i8** %8, i32 16
  store i8* %temp41, i8** %42
  %new_melody42 = load i8**, i8*** %new_melody
  %43 = getelementptr i8*, i8** %new_melody42, i32 17
  %temp43 = load i8*, i8** %43
  %44 = getelementptr i8*, i8** %8, i32 17
  store i8* %temp43, i8** %44
  %new_melody44 = load i8**, i8*** %new_melody
  %45 = getelementptr i8*, i8** %new_melody44, i32 18
  %temp45 = load i8*, i8** %45
  %46 = getelementptr i8*, i8** %8, i32 18
  store i8* %temp45, i8** %46
  %new_melody46 = load i8**, i8*** %new_melody
  %47 = getelementptr i8*, i8** %new_melody46, i32 19
  %temp47 = load i8*, i8** %47
  %48 = getelementptr i8*, i8** %8, i32 19
  store i8* %temp47, i8** %48
  %new_melody48 = load i8**, i8*** %new_melody
  %49 = getelementptr i8*, i8** %new_melody48, i32 20
  %temp49 = load i8*, i8** %49
  %50 = getelementptr i8*, i8** %8, i32 20
  store i8* %temp49, i8** %50
  %new_melody50 = load i8**, i8*** %new_melody
  %51 = getelementptr i8*, i8** %new_melody50, i32 21
  %temp51 = load i8*, i8** %51
  %52 = getelementptr i8*, i8** %8, i32 21
  store i8* %temp51, i8** %52
  %new_melody52 = load i8**, i8*** %new_melody
  %53 = getelementptr i8*, i8** %new_melody52, i32 22
  %temp53 = load i8*, i8** %53
  %54 = getelementptr i8*, i8** %8, i32 22
  store i8* %temp53, i8** %54
  %new_melody54 = load i8**, i8*** %new_melody
  %55 = getelementptr i8*, i8** %new_melody54, i32 23
  %temp55 = load i8*, i8** %55
  %56 = getelementptr i8*, i8** %8, i32 23
  store i8* %temp55, i8** %56
  %new_melody56 = load i8**, i8*** %new_melody
  %57 = getelementptr i8*, i8** %new_melody56, i32 24
  %temp57 = load i8*, i8** %57
  %58 = getelementptr i8*, i8** %8, i32 24
  store i8* %temp57, i8** %58
  %new_melody58 = load i8**, i8*** %new_melody
  %59 = getelementptr i8*, i8** %new_melody58, i32 25
  %temp59 = load i8*, i8** %59
  %60 = getelementptr i8*, i8** %8, i32 25
  store i8* %temp59, i8** %60
  %new_melody60 = load i8**, i8*** %new_melody
  %61 = getelementptr i8*, i8** %new_melody60, i32 26
  %temp61 = load i8*, i8** %61
  %62 = getelementptr i8*, i8** %8, i32 26
  store i8* %temp61, i8** %62
  %new_melody62 = load i8**, i8*** %new_melody
  %63 = getelementptr i8*, i8** %new_melody62, i32 27
  %temp63 = load i8*, i8** %63
  %64 = getelementptr i8*, i8** %8, i32 27
  store i8* %temp63, i8** %64
  %new_melody64 = load i8**, i8*** %new_melody
  %65 = getelementptr i8*, i8** %new_melody64, i32 28
  %temp65 = load i8*, i8** %65
  %66 = getelementptr i8*, i8** %8, i32 28
  store i8* %temp65, i8** %66
  %new_melody66 = load i8**, i8*** %new_melody
  %67 = getelementptr i8*, i8** %new_melody66, i32 29
  %temp67 = load i8*, i8** %67
  %68 = getelementptr i8*, i8** %8, i32 29
  store i8* %temp67, i8** %68
  %new_melody68 = load i8**, i8*** %new_melody
  %69 = getelementptr i8*, i8** %new_melody68, i32 30
  %temp69 = load i8*, i8** %69
  %70 = getelementptr i8*, i8** %8, i32 30
  store i8* %temp69, i8** %70
  %new_melody70 = load i8**, i8*** %new_melody
  %71 = getelementptr i8*, i8** %new_melody70, i32 31
  %temp71 = load i8*, i8** %71
  %72 = getelementptr i8*, i8** %8, i32 31
  store i8* %temp71, i8** %72
  %new_melody72 = load i8**, i8*** %new_melody
  %73 = getelementptr i8*, i8** %new_melody72, i32 32
  %temp73 = load i8*, i8** %73
  %74 = getelementptr i8*, i8** %8, i32 32
  store i8* %temp73, i8** %74
  %new_melody74 = load i8**, i8*** %new_melody
  %75 = getelementptr i8*, i8** %new_melody74, i32 33
  %temp75 = load i8*, i8** %75
  %76 = getelementptr i8*, i8** %8, i32 33
  store i8* %temp75, i8** %76
  %new_melody76 = load i8**, i8*** %new_melody
  %77 = getelementptr i8*, i8** %new_melody76, i32 34
  %temp77 = load i8*, i8** %77
  %78 = getelementptr i8*, i8** %8, i32 34
  store i8* %temp77, i8** %78
  %new_melody78 = load i8**, i8*** %new_melody
  %79 = getelementptr i8*, i8** %new_melody78, i32 35
  %temp79 = load i8*, i8** %79
  %80 = getelementptr i8*, i8** %8, i32 35
  store i8* %temp79, i8** %80
  %new_melody80 = load i8**, i8*** %new_melody
  %81 = getelementptr i8*, i8** %new_melody80, i32 36
  %temp81 = load i8*, i8** %81
  %82 = getelementptr i8*, i8** %8, i32 36
  store i8* %temp81, i8** %82
  %new_melody82 = load i8**, i8*** %new_melody
  %83 = getelementptr i8*, i8** %new_melody82, i32 37
  %temp83 = load i8*, i8** %83
  %84 = getelementptr i8*, i8** %8, i32 37
  store i8* %temp83, i8** %84
  %new_melody84 = load i8**, i8*** %new_melody
  %85 = getelementptr i8*, i8** %new_melody84, i32 38
  %temp85 = load i8*, i8** %85
  %86 = getelementptr i8*, i8** %8, i32 38
  store i8* %temp85, i8** %86
  %new_melody86 = load i8**, i8*** %new_melody
  %87 = getelementptr i8*, i8** %new_melody86, i32 39
  %temp87 = load i8*, i8** %87
  %88 = getelementptr i8*, i8** %8, i32 39
  store i8* %temp87, i8** %88
  %new_melody88 = load i8**, i8*** %new_melody
  %89 = getelementptr i8*, i8** %new_melody88, i32 40
  %temp89 = load i8*, i8** %89
  %90 = getelementptr i8*, i8** %8, i32 40
  store i8* %temp89, i8** %90
  %new_melody90 = load i8**, i8*** %new_melody
  %91 = getelementptr i8*, i8** %new_melody90, i32 41
  %temp91 = load i8*, i8** %91
  %92 = getelementptr i8*, i8** %8, i32 41
  store i8* %temp91, i8** %92
  %new_melody92 = load i8**, i8*** %new_melody
  %93 = getelementptr i8*, i8** %new_melody92, i32 42
  %temp93 = load i8*, i8** %93
  %94 = getelementptr i8*, i8** %8, i32 42
  store i8* %temp93, i8** %94
  %new_melody94 = load i8**, i8*** %new_melody
  %95 = getelementptr i8*, i8** %new_melody94, i32 43
  %temp95 = load i8*, i8** %95
  %96 = getelementptr i8*, i8** %8, i32 43
  store i8* %temp95, i8** %96
  %new_melody96 = load i8**, i8*** %new_melody
  %97 = getelementptr i8*, i8** %new_melody96, i32 44
  %temp97 = load i8*, i8** %97
  %98 = getelementptr i8*, i8** %8, i32 44
  store i8* %temp97, i8** %98
  %new_melody98 = load i8**, i8*** %new_melody
  %99 = getelementptr i8*, i8** %new_melody98, i32 45
  %temp99 = load i8*, i8** %99
  %100 = getelementptr i8*, i8** %8, i32 45
  store i8* %temp99, i8** %100
  %new_melody100 = load i8**, i8*** %new_melody
  %101 = getelementptr i8*, i8** %new_melody100, i32 46
  %temp101 = load i8*, i8** %101
  %102 = getelementptr i8*, i8** %8, i32 46
  store i8* %temp101, i8** %102
  %new_melody102 = load i8**, i8*** %new_melody
  %103 = getelementptr i8*, i8** %new_melody102, i32 47
  %temp103 = load i8*, i8** %103
  %104 = getelementptr i8*, i8** %8, i32 47
  store i8* %temp103, i8** %104
  %new_melody104 = load i8**, i8*** %new_melody
  %105 = getelementptr i8*, i8** %new_melody104, i32 48
  %temp105 = load i8*, i8** %105
  %106 = getelementptr i8*, i8** %8, i32 48
  store i8* %temp105, i8** %106
  %new_melody106 = load i8**, i8*** %new_melody
  %107 = getelementptr i8*, i8** %new_melody106, i32 49
  %temp107 = load i8*, i8** %107
  %108 = getelementptr i8*, i8** %8, i32 49
  store i8* %temp107, i8** %108
  %malloccall108 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %109 = bitcast i8* %malloccall108 to i8**
  %110 = getelementptr i8*, i8** %109, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#", i32 0, i32 0), i8** %110
  %111 = getelementptr i8*, i8** %109, i32 0
  %temp109 = load i8*, i8** %111
  %112 = getelementptr i8*, i8** %8, i32 50
  store i8* %temp109, i8** %112
  store i8** %8, i8*** %new_melody
  %melody110 = load i8**, i8*** %melody3
  %i111 = load i32, i32* %i
  %113 = getelementptr i8*, i8** %melody110, i32 %i111
  %114 = load i8*, i8** %113
  %new_melody112 = load i8**, i8*** %new_melody
  %i113 = load i32, i32* %i
  %115 = getelementptr i8*, i8** %new_melody112, i32 %i113
  store i8* %114, i8** %115
  %malloccall114 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 51))
  %116 = bitcast i8* %malloccall114 to i32*
  %new_rhythm115 = load i32*, i32** %new_rhythm
  %117 = getelementptr i32, i32* %new_rhythm115, i32 0
  %temp116 = load i32, i32* %117
  %118 = getelementptr i32, i32* %116, i32 0
  store i32 %temp116, i32* %118
  %new_rhythm117 = load i32*, i32** %new_rhythm
  %119 = getelementptr i32, i32* %new_rhythm117, i32 1
  %temp118 = load i32, i32* %119
  %120 = getelementptr i32, i32* %116, i32 1
  store i32 %temp118, i32* %120
  %new_rhythm119 = load i32*, i32** %new_rhythm
  %121 = getelementptr i32, i32* %new_rhythm119, i32 2
  %temp120 = load i32, i32* %121
  %122 = getelementptr i32, i32* %116, i32 2
  store i32 %temp120, i32* %122
  %new_rhythm121 = load i32*, i32** %new_rhythm
  %123 = getelementptr i32, i32* %new_rhythm121, i32 3
  %temp122 = load i32, i32* %123
  %124 = getelementptr i32, i32* %116, i32 3
  store i32 %temp122, i32* %124
  %new_rhythm123 = load i32*, i32** %new_rhythm
  %125 = getelementptr i32, i32* %new_rhythm123, i32 4
  %temp124 = load i32, i32* %125
  %126 = getelementptr i32, i32* %116, i32 4
  store i32 %temp124, i32* %126
  %new_rhythm125 = load i32*, i32** %new_rhythm
  %127 = getelementptr i32, i32* %new_rhythm125, i32 5
  %temp126 = load i32, i32* %127
  %128 = getelementptr i32, i32* %116, i32 5
  store i32 %temp126, i32* %128
  %new_rhythm127 = load i32*, i32** %new_rhythm
  %129 = getelementptr i32, i32* %new_rhythm127, i32 6
  %temp128 = load i32, i32* %129
  %130 = getelementptr i32, i32* %116, i32 6
  store i32 %temp128, i32* %130
  %new_rhythm129 = load i32*, i32** %new_rhythm
  %131 = getelementptr i32, i32* %new_rhythm129, i32 7
  %temp130 = load i32, i32* %131
  %132 = getelementptr i32, i32* %116, i32 7
  store i32 %temp130, i32* %132
  %new_rhythm131 = load i32*, i32** %new_rhythm
  %133 = getelementptr i32, i32* %new_rhythm131, i32 8
  %temp132 = load i32, i32* %133
  %134 = getelementptr i32, i32* %116, i32 8
  store i32 %temp132, i32* %134
  %new_rhythm133 = load i32*, i32** %new_rhythm
  %135 = getelementptr i32, i32* %new_rhythm133, i32 9
  %temp134 = load i32, i32* %135
  %136 = getelementptr i32, i32* %116, i32 9
  store i32 %temp134, i32* %136
  %new_rhythm135 = load i32*, i32** %new_rhythm
  %137 = getelementptr i32, i32* %new_rhythm135, i32 10
  %temp136 = load i32, i32* %137
  %138 = getelementptr i32, i32* %116, i32 10
  store i32 %temp136, i32* %138
  %new_rhythm137 = load i32*, i32** %new_rhythm
  %139 = getelementptr i32, i32* %new_rhythm137, i32 11
  %temp138 = load i32, i32* %139
  %140 = getelementptr i32, i32* %116, i32 11
  store i32 %temp138, i32* %140
  %new_rhythm139 = load i32*, i32** %new_rhythm
  %141 = getelementptr i32, i32* %new_rhythm139, i32 12
  %temp140 = load i32, i32* %141
  %142 = getelementptr i32, i32* %116, i32 12
  store i32 %temp140, i32* %142
  %new_rhythm141 = load i32*, i32** %new_rhythm
  %143 = getelementptr i32, i32* %new_rhythm141, i32 13
  %temp142 = load i32, i32* %143
  %144 = getelementptr i32, i32* %116, i32 13
  store i32 %temp142, i32* %144
  %new_rhythm143 = load i32*, i32** %new_rhythm
  %145 = getelementptr i32, i32* %new_rhythm143, i32 14
  %temp144 = load i32, i32* %145
  %146 = getelementptr i32, i32* %116, i32 14
  store i32 %temp144, i32* %146
  %new_rhythm145 = load i32*, i32** %new_rhythm
  %147 = getelementptr i32, i32* %new_rhythm145, i32 15
  %temp146 = load i32, i32* %147
  %148 = getelementptr i32, i32* %116, i32 15
  store i32 %temp146, i32* %148
  %new_rhythm147 = load i32*, i32** %new_rhythm
  %149 = getelementptr i32, i32* %new_rhythm147, i32 16
  %temp148 = load i32, i32* %149
  %150 = getelementptr i32, i32* %116, i32 16
  store i32 %temp148, i32* %150
  %new_rhythm149 = load i32*, i32** %new_rhythm
  %151 = getelementptr i32, i32* %new_rhythm149, i32 17
  %temp150 = load i32, i32* %151
  %152 = getelementptr i32, i32* %116, i32 17
  store i32 %temp150, i32* %152
  %new_rhythm151 = load i32*, i32** %new_rhythm
  %153 = getelementptr i32, i32* %new_rhythm151, i32 18
  %temp152 = load i32, i32* %153
  %154 = getelementptr i32, i32* %116, i32 18
  store i32 %temp152, i32* %154
  %new_rhythm153 = load i32*, i32** %new_rhythm
  %155 = getelementptr i32, i32* %new_rhythm153, i32 19
  %temp154 = load i32, i32* %155
  %156 = getelementptr i32, i32* %116, i32 19
  store i32 %temp154, i32* %156
  %new_rhythm155 = load i32*, i32** %new_rhythm
  %157 = getelementptr i32, i32* %new_rhythm155, i32 20
  %temp156 = load i32, i32* %157
  %158 = getelementptr i32, i32* %116, i32 20
  store i32 %temp156, i32* %158
  %new_rhythm157 = load i32*, i32** %new_rhythm
  %159 = getelementptr i32, i32* %new_rhythm157, i32 21
  %temp158 = load i32, i32* %159
  %160 = getelementptr i32, i32* %116, i32 21
  store i32 %temp158, i32* %160
  %new_rhythm159 = load i32*, i32** %new_rhythm
  %161 = getelementptr i32, i32* %new_rhythm159, i32 22
  %temp160 = load i32, i32* %161
  %162 = getelementptr i32, i32* %116, i32 22
  store i32 %temp160, i32* %162
  %new_rhythm161 = load i32*, i32** %new_rhythm
  %163 = getelementptr i32, i32* %new_rhythm161, i32 23
  %temp162 = load i32, i32* %163
  %164 = getelementptr i32, i32* %116, i32 23
  store i32 %temp162, i32* %164
  %new_rhythm163 = load i32*, i32** %new_rhythm
  %165 = getelementptr i32, i32* %new_rhythm163, i32 24
  %temp164 = load i32, i32* %165
  %166 = getelementptr i32, i32* %116, i32 24
  store i32 %temp164, i32* %166
  %new_rhythm165 = load i32*, i32** %new_rhythm
  %167 = getelementptr i32, i32* %new_rhythm165, i32 25
  %temp166 = load i32, i32* %167
  %168 = getelementptr i32, i32* %116, i32 25
  store i32 %temp166, i32* %168
  %new_rhythm167 = load i32*, i32** %new_rhythm
  %169 = getelementptr i32, i32* %new_rhythm167, i32 26
  %temp168 = load i32, i32* %169
  %170 = getelementptr i32, i32* %116, i32 26
  store i32 %temp168, i32* %170
  %new_rhythm169 = load i32*, i32** %new_rhythm
  %171 = getelementptr i32, i32* %new_rhythm169, i32 27
  %temp170 = load i32, i32* %171
  %172 = getelementptr i32, i32* %116, i32 27
  store i32 %temp170, i32* %172
  %new_rhythm171 = load i32*, i32** %new_rhythm
  %173 = getelementptr i32, i32* %new_rhythm171, i32 28
  %temp172 = load i32, i32* %173
  %174 = getelementptr i32, i32* %116, i32 28
  store i32 %temp172, i32* %174
  %new_rhythm173 = load i32*, i32** %new_rhythm
  %175 = getelementptr i32, i32* %new_rhythm173, i32 29
  %temp174 = load i32, i32* %175
  %176 = getelementptr i32, i32* %116, i32 29
  store i32 %temp174, i32* %176
  %new_rhythm175 = load i32*, i32** %new_rhythm
  %177 = getelementptr i32, i32* %new_rhythm175, i32 30
  %temp176 = load i32, i32* %177
  %178 = getelementptr i32, i32* %116, i32 30
  store i32 %temp176, i32* %178
  %new_rhythm177 = load i32*, i32** %new_rhythm
  %179 = getelementptr i32, i32* %new_rhythm177, i32 31
  %temp178 = load i32, i32* %179
  %180 = getelementptr i32, i32* %116, i32 31
  store i32 %temp178, i32* %180
  %new_rhythm179 = load i32*, i32** %new_rhythm
  %181 = getelementptr i32, i32* %new_rhythm179, i32 32
  %temp180 = load i32, i32* %181
  %182 = getelementptr i32, i32* %116, i32 32
  store i32 %temp180, i32* %182
  %new_rhythm181 = load i32*, i32** %new_rhythm
  %183 = getelementptr i32, i32* %new_rhythm181, i32 33
  %temp182 = load i32, i32* %183
  %184 = getelementptr i32, i32* %116, i32 33
  store i32 %temp182, i32* %184
  %new_rhythm183 = load i32*, i32** %new_rhythm
  %185 = getelementptr i32, i32* %new_rhythm183, i32 34
  %temp184 = load i32, i32* %185
  %186 = getelementptr i32, i32* %116, i32 34
  store i32 %temp184, i32* %186
  %new_rhythm185 = load i32*, i32** %new_rhythm
  %187 = getelementptr i32, i32* %new_rhythm185, i32 35
  %temp186 = load i32, i32* %187
  %188 = getelementptr i32, i32* %116, i32 35
  store i32 %temp186, i32* %188
  %new_rhythm187 = load i32*, i32** %new_rhythm
  %189 = getelementptr i32, i32* %new_rhythm187, i32 36
  %temp188 = load i32, i32* %189
  %190 = getelementptr i32, i32* %116, i32 36
  store i32 %temp188, i32* %190
  %new_rhythm189 = load i32*, i32** %new_rhythm
  %191 = getelementptr i32, i32* %new_rhythm189, i32 37
  %temp190 = load i32, i32* %191
  %192 = getelementptr i32, i32* %116, i32 37
  store i32 %temp190, i32* %192
  %new_rhythm191 = load i32*, i32** %new_rhythm
  %193 = getelementptr i32, i32* %new_rhythm191, i32 38
  %temp192 = load i32, i32* %193
  %194 = getelementptr i32, i32* %116, i32 38
  store i32 %temp192, i32* %194
  %new_rhythm193 = load i32*, i32** %new_rhythm
  %195 = getelementptr i32, i32* %new_rhythm193, i32 39
  %temp194 = load i32, i32* %195
  %196 = getelementptr i32, i32* %116, i32 39
  store i32 %temp194, i32* %196
  %new_rhythm195 = load i32*, i32** %new_rhythm
  %197 = getelementptr i32, i32* %new_rhythm195, i32 40
  %temp196 = load i32, i32* %197
  %198 = getelementptr i32, i32* %116, i32 40
  store i32 %temp196, i32* %198
  %new_rhythm197 = load i32*, i32** %new_rhythm
  %199 = getelementptr i32, i32* %new_rhythm197, i32 41
  %temp198 = load i32, i32* %199
  %200 = getelementptr i32, i32* %116, i32 41
  store i32 %temp198, i32* %200
  %new_rhythm199 = load i32*, i32** %new_rhythm
  %201 = getelementptr i32, i32* %new_rhythm199, i32 42
  %temp200 = load i32, i32* %201
  %202 = getelementptr i32, i32* %116, i32 42
  store i32 %temp200, i32* %202
  %new_rhythm201 = load i32*, i32** %new_rhythm
  %203 = getelementptr i32, i32* %new_rhythm201, i32 43
  %temp202 = load i32, i32* %203
  %204 = getelementptr i32, i32* %116, i32 43
  store i32 %temp202, i32* %204
  %new_rhythm203 = load i32*, i32** %new_rhythm
  %205 = getelementptr i32, i32* %new_rhythm203, i32 44
  %temp204 = load i32, i32* %205
  %206 = getelementptr i32, i32* %116, i32 44
  store i32 %temp204, i32* %206
  %new_rhythm205 = load i32*, i32** %new_rhythm
  %207 = getelementptr i32, i32* %new_rhythm205, i32 45
  %temp206 = load i32, i32* %207
  %208 = getelementptr i32, i32* %116, i32 45
  store i32 %temp206, i32* %208
  %new_rhythm207 = load i32*, i32** %new_rhythm
  %209 = getelementptr i32, i32* %new_rhythm207, i32 46
  %temp208 = load i32, i32* %209
  %210 = getelementptr i32, i32* %116, i32 46
  store i32 %temp208, i32* %210
  %new_rhythm209 = load i32*, i32** %new_rhythm
  %211 = getelementptr i32, i32* %new_rhythm209, i32 47
  %temp210 = load i32, i32* %211
  %212 = getelementptr i32, i32* %116, i32 47
  store i32 %temp210, i32* %212
  %new_rhythm211 = load i32*, i32** %new_rhythm
  %213 = getelementptr i32, i32* %new_rhythm211, i32 48
  %temp212 = load i32, i32* %213
  %214 = getelementptr i32, i32* %116, i32 48
  store i32 %temp212, i32* %214
  %new_rhythm213 = load i32*, i32** %new_rhythm
  %215 = getelementptr i32, i32* %new_rhythm213, i32 49
  %temp214 = load i32, i32* %215
  %216 = getelementptr i32, i32* %116, i32 49
  store i32 %temp214, i32* %216
  %malloccall215 = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %217 = bitcast i8* %malloccall215 to i32*
  %218 = getelementptr i32, i32* %217, i32 0
  store i32 0, i32* %218
  %219 = getelementptr i32, i32* %217, i32 0
  %temp216 = load i32, i32* %219
  %220 = getelementptr i32, i32* %116, i32 50
  store i32 %temp216, i32* %220
  store i32* %116, i32** %new_rhythm
  %rhythm217 = load i32*, i32** %rhythm4
  %i218 = load i32, i32* %i
  %221 = getelementptr i32, i32* %rhythm217, i32 %i218
  %222 = load i32, i32* %221
  %new_rhythm219 = load i32*, i32** %new_rhythm
  %i220 = load i32, i32* %i
  %223 = getelementptr i32, i32* %new_rhythm219, i32 %i220
  store i32 %222, i32* %223
  %i221 = load i32, i32* %i
  %tmp = add i32 %i221, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  %instrument225 = load i32, i32* %instrument1
  %struct.ptr = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res, i32 0, i32 3
  store i32 %instrument225, i32* %struct.ptr
  %size226 = load i32, i32* %size2
  %struct.ptr227 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res, i32 0, i32 2
  store i32 %size226, i32* %struct.ptr227
  %new_melody228 = load i8**, i8*** %new_melody
  %struct.ptr229 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res, i32 0, i32 1
  store i8** %new_melody228, i8*** %struct.ptr229
  %new_rhythm230 = load i32*, i32** %new_rhythm
  %struct.ptr231 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res, i32 0, i32 0
  store i32* %new_rhythm230, i32** %struct.ptr231
  %res232 = load { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res
  ret { i32*, i8**, i32, i32 } %res232
}

define i32 @main() {
entry:
  %a = alloca { i8* }
  %struct.ptr = getelementptr inbounds { i8* }, { i8* }* %a, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.6", i32 0, i32 0), i8** %struct.ptr
  %struct.ptr1 = getelementptr inbounds { i8* }, { i8* }* %a, i32 0, i32 0
  %struct.val.test = load i8*, i8** %struct.ptr1
  %prints = call i32 (i8*, ...) @puts(i8* %struct.val.test)
  ret i32 0
}

declare noalias i8* @malloc(i32)
