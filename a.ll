; ModuleID = 'MicroC'
source_filename = "MicroC"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"4#" = private unnamed_addr constant [4 x i8] c"1#1\00", align 1
@"4#.2" = private unnamed_addr constant [4 x i8] c"2#1\00", align 1
@"4#.3" = private unnamed_addr constant [4 x i8] c"3#1\00", align 1
@"4#.4" = private unnamed_addr constant [4 x i8] c"4#1\00", align 1
@"4#.5" = private unnamed_addr constant [4 x i8] c"5#1\00", align 1
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"123" = private unnamed_addr constant [12 x i8] c"track start\00", align 1
@fmt.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.9 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"4#.10" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.11" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.12" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.13" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.14" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.15" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.16" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.17" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.18" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.19" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @print_arr(i32, ...)

declare i8* @puts(i8*, ...)

declare i32 @pitch_to_int(i8*, ...)

define i32 @main() {
entry:
  %i = alloca i32
  %tem = alloca i8**
  %melody_a = alloca i8**
  %rhythm_a = alloca i32*
  %track_1 = alloca { i32*, i8**, i32, i32 }
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 5))
  %0 = bitcast i8* %malloccall to i8**
  %1 = getelementptr i8*, i8** %0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#", i32 0, i32 0), i8** %1
  %2 = getelementptr i8*, i8** %0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.2", i32 0, i32 0), i8** %2
  %3 = getelementptr i8*, i8** %0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.3", i32 0, i32 0), i8** %3
  %4 = getelementptr i8*, i8** %0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.4", i32 0, i32 0), i8** %4
  %5 = getelementptr i8*, i8** %0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.5", i32 0, i32 0), i8** %5
  store i8** %0, i8*** %melody_a
  %malloccall1 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 5))
  %6 = bitcast i8* %malloccall1 to i32*
  %7 = getelementptr i32, i32* %6, i32 0
  store i32 1, i32* %7
  %8 = getelementptr i32, i32* %6, i32 1
  store i32 1, i32* %8
  %9 = getelementptr i32, i32* %6, i32 2
  store i32 1, i32* %9
  %10 = getelementptr i32, i32* %6, i32 3
  store i32 1, i32* %10
  %11 = getelementptr i32, i32* %6, i32 4
  store i32 2, i32* %11
  store i32* %6, i32** %rhythm_a
  %rhythm_a2 = load i32*, i32** %rhythm_a
  %melody_a3 = load i8**, i8*** %melody_a
  %build_track_result = call { i32*, i8**, i32, i32 } @build_track(i32 1, i32 5, i8** %melody_a3, i32* %rhythm_a2)
  store { i32*, i8**, i32, i32 } %build_track_result, { i32*, i8**, i32, i32 }* %track_1
  %track_14 = load { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %track_1
  call void @generate_music({ i32*, i8**, i32, i32 } %track_14)
  ret i32 0
}

define void @generate_music({ i32*, i8**, i32, i32 } %t) {
entry:
  %t1 = alloca { i32*, i8**, i32, i32 }
  store { i32*, i8**, i32, i32 } %t, { i32*, i8**, i32, i32 }* %t1
  %i = alloca i32
  %prints = call i8* (i8*, ...) @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"123", i32 0, i32 0))
  %struct.ptr = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %t1, i32 0, i32 3
  %struct.val.instrument = load i32, i32* %struct.ptr
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 %struct.val.instrument)
  %struct.ptr2 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %t1, i32 0, i32 2
  %struct.val.size = load i32, i32* %struct.ptr2
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 %struct.val.size)
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
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 %pitchtoint)
  %struct.ptr7 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %t1, i32 0, i32 0
  %struct.val.rhythm = load i32*, i32** %struct.ptr7
  %i8 = load i32, i32* %i
  %2 = getelementptr i32, i32* %struct.val.rhythm, i32 %i8
  %3 = load i32, i32* %2
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 %3)
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
  %tem = alloca i8**
  %new_melody = alloca i8**
  %tem2 = alloca i32*
  %new_rhythm = alloca i32*
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 10))
  %0 = bitcast i8* %malloccall to i8**
  %1 = getelementptr i8*, i8** %0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.10", i32 0, i32 0), i8** %1
  %2 = getelementptr i8*, i8** %0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.11", i32 0, i32 0), i8** %2
  %3 = getelementptr i8*, i8** %0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.12", i32 0, i32 0), i8** %3
  %4 = getelementptr i8*, i8** %0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.13", i32 0, i32 0), i8** %4
  %5 = getelementptr i8*, i8** %0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.14", i32 0, i32 0), i8** %5
  %6 = getelementptr i8*, i8** %0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.15", i32 0, i32 0), i8** %6
  %7 = getelementptr i8*, i8** %0, i32 6
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.16", i32 0, i32 0), i8** %7
  %8 = getelementptr i8*, i8** %0, i32 7
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.17", i32 0, i32 0), i8** %8
  %9 = getelementptr i8*, i8** %0, i32 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.18", i32 0, i32 0), i8** %9
  %10 = getelementptr i8*, i8** %0, i32 9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.19", i32 0, i32 0), i8** %10
  store i8** %0, i8*** %tem
  %malloccall5 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 20))
  %11 = bitcast i8* %malloccall5 to i8**
  %tem6 = load i8**, i8*** %tem
  %12 = getelementptr i8*, i8** %tem6, i32 0
  %temp = load i8*, i8** %12
  %13 = getelementptr i8*, i8** %11, i32 0
  store i8* %temp, i8** %13
  %tem7 = load i8**, i8*** %tem
  %14 = getelementptr i8*, i8** %tem7, i32 1
  %temp8 = load i8*, i8** %14
  %15 = getelementptr i8*, i8** %11, i32 1
  store i8* %temp8, i8** %15
  %tem9 = load i8**, i8*** %tem
  %16 = getelementptr i8*, i8** %tem9, i32 2
  %temp10 = load i8*, i8** %16
  %17 = getelementptr i8*, i8** %11, i32 2
  store i8* %temp10, i8** %17
  %tem11 = load i8**, i8*** %tem
  %18 = getelementptr i8*, i8** %tem11, i32 3
  %temp12 = load i8*, i8** %18
  %19 = getelementptr i8*, i8** %11, i32 3
  store i8* %temp12, i8** %19
  %tem13 = load i8**, i8*** %tem
  %20 = getelementptr i8*, i8** %tem13, i32 4
  %temp14 = load i8*, i8** %20
  %21 = getelementptr i8*, i8** %11, i32 4
  store i8* %temp14, i8** %21
  %tem15 = load i8**, i8*** %tem
  %22 = getelementptr i8*, i8** %tem15, i32 5
  %temp16 = load i8*, i8** %22
  %23 = getelementptr i8*, i8** %11, i32 5
  store i8* %temp16, i8** %23
  %tem17 = load i8**, i8*** %tem
  %24 = getelementptr i8*, i8** %tem17, i32 6
  %temp18 = load i8*, i8** %24
  %25 = getelementptr i8*, i8** %11, i32 6
  store i8* %temp18, i8** %25
  %tem19 = load i8**, i8*** %tem
  %26 = getelementptr i8*, i8** %tem19, i32 7
  %temp20 = load i8*, i8** %26
  %27 = getelementptr i8*, i8** %11, i32 7
  store i8* %temp20, i8** %27
  %tem21 = load i8**, i8*** %tem
  %28 = getelementptr i8*, i8** %tem21, i32 8
  %temp22 = load i8*, i8** %28
  %29 = getelementptr i8*, i8** %11, i32 8
  store i8* %temp22, i8** %29
  %tem23 = load i8**, i8*** %tem
  %30 = getelementptr i8*, i8** %tem23, i32 9
  %temp24 = load i8*, i8** %30
  %31 = getelementptr i8*, i8** %11, i32 9
  store i8* %temp24, i8** %31
  %tem25 = load i8**, i8*** %tem
  %32 = getelementptr i8*, i8** %tem25, i32 0
  %temp26 = load i8*, i8** %32
  %33 = getelementptr i8*, i8** %11, i32 10
  store i8* %temp26, i8** %33
  %tem27 = load i8**, i8*** %tem
  %34 = getelementptr i8*, i8** %tem27, i32 1
  %temp28 = load i8*, i8** %34
  %35 = getelementptr i8*, i8** %11, i32 11
  store i8* %temp28, i8** %35
  %tem29 = load i8**, i8*** %tem
  %36 = getelementptr i8*, i8** %tem29, i32 2
  %temp30 = load i8*, i8** %36
  %37 = getelementptr i8*, i8** %11, i32 12
  store i8* %temp30, i8** %37
  %tem31 = load i8**, i8*** %tem
  %38 = getelementptr i8*, i8** %tem31, i32 3
  %temp32 = load i8*, i8** %38
  %39 = getelementptr i8*, i8** %11, i32 13
  store i8* %temp32, i8** %39
  %tem33 = load i8**, i8*** %tem
  %40 = getelementptr i8*, i8** %tem33, i32 4
  %temp34 = load i8*, i8** %40
  %41 = getelementptr i8*, i8** %11, i32 14
  store i8* %temp34, i8** %41
  %tem35 = load i8**, i8*** %tem
  %42 = getelementptr i8*, i8** %tem35, i32 5
  %temp36 = load i8*, i8** %42
  %43 = getelementptr i8*, i8** %11, i32 15
  store i8* %temp36, i8** %43
  %tem37 = load i8**, i8*** %tem
  %44 = getelementptr i8*, i8** %tem37, i32 6
  %temp38 = load i8*, i8** %44
  %45 = getelementptr i8*, i8** %11, i32 16
  store i8* %temp38, i8** %45
  %tem39 = load i8**, i8*** %tem
  %46 = getelementptr i8*, i8** %tem39, i32 7
  %temp40 = load i8*, i8** %46
  %47 = getelementptr i8*, i8** %11, i32 17
  store i8* %temp40, i8** %47
  %tem41 = load i8**, i8*** %tem
  %48 = getelementptr i8*, i8** %tem41, i32 8
  %temp42 = load i8*, i8** %48
  %49 = getelementptr i8*, i8** %11, i32 18
  store i8* %temp42, i8** %49
  %tem43 = load i8**, i8*** %tem
  %50 = getelementptr i8*, i8** %tem43, i32 9
  %temp44 = load i8*, i8** %50
  %51 = getelementptr i8*, i8** %11, i32 19
  store i8* %temp44, i8** %51
  store i8** %11, i8*** %new_melody
  %malloccall45 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 10))
  %52 = bitcast i8* %malloccall45 to i32*
  %53 = getelementptr i32, i32* %52, i32 0
  store i32 0, i32* %53
  %54 = getelementptr i32, i32* %52, i32 1
  store i32 0, i32* %54
  %55 = getelementptr i32, i32* %52, i32 2
  store i32 0, i32* %55
  %56 = getelementptr i32, i32* %52, i32 3
  store i32 0, i32* %56
  %57 = getelementptr i32, i32* %52, i32 4
  store i32 0, i32* %57
  %58 = getelementptr i32, i32* %52, i32 5
  store i32 0, i32* %58
  %59 = getelementptr i32, i32* %52, i32 6
  store i32 0, i32* %59
  %60 = getelementptr i32, i32* %52, i32 7
  store i32 0, i32* %60
  %61 = getelementptr i32, i32* %52, i32 8
  store i32 0, i32* %61
  %62 = getelementptr i32, i32* %52, i32 9
  store i32 0, i32* %62
  store i32* %52, i32** %tem2
  %malloccall46 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 20))
  %63 = bitcast i8* %malloccall46 to i32*
  %tem247 = load i32*, i32** %tem2
  %64 = getelementptr i32, i32* %tem247, i32 0
  %temp48 = load i32, i32* %64
  %65 = getelementptr i32, i32* %63, i32 0
  store i32 %temp48, i32* %65
  %tem249 = load i32*, i32** %tem2
  %66 = getelementptr i32, i32* %tem249, i32 1
  %temp50 = load i32, i32* %66
  %67 = getelementptr i32, i32* %63, i32 1
  store i32 %temp50, i32* %67
  %tem251 = load i32*, i32** %tem2
  %68 = getelementptr i32, i32* %tem251, i32 2
  %temp52 = load i32, i32* %68
  %69 = getelementptr i32, i32* %63, i32 2
  store i32 %temp52, i32* %69
  %tem253 = load i32*, i32** %tem2
  %70 = getelementptr i32, i32* %tem253, i32 3
  %temp54 = load i32, i32* %70
  %71 = getelementptr i32, i32* %63, i32 3
  store i32 %temp54, i32* %71
  %tem255 = load i32*, i32** %tem2
  %72 = getelementptr i32, i32* %tem255, i32 4
  %temp56 = load i32, i32* %72
  %73 = getelementptr i32, i32* %63, i32 4
  store i32 %temp56, i32* %73
  %tem257 = load i32*, i32** %tem2
  %74 = getelementptr i32, i32* %tem257, i32 5
  %temp58 = load i32, i32* %74
  %75 = getelementptr i32, i32* %63, i32 5
  store i32 %temp58, i32* %75
  %tem259 = load i32*, i32** %tem2
  %76 = getelementptr i32, i32* %tem259, i32 6
  %temp60 = load i32, i32* %76
  %77 = getelementptr i32, i32* %63, i32 6
  store i32 %temp60, i32* %77
  %tem261 = load i32*, i32** %tem2
  %78 = getelementptr i32, i32* %tem261, i32 7
  %temp62 = load i32, i32* %78
  %79 = getelementptr i32, i32* %63, i32 7
  store i32 %temp62, i32* %79
  %tem263 = load i32*, i32** %tem2
  %80 = getelementptr i32, i32* %tem263, i32 8
  %temp64 = load i32, i32* %80
  %81 = getelementptr i32, i32* %63, i32 8
  store i32 %temp64, i32* %81
  %tem265 = load i32*, i32** %tem2
  %82 = getelementptr i32, i32* %tem265, i32 9
  %temp66 = load i32, i32* %82
  %83 = getelementptr i32, i32* %63, i32 9
  store i32 %temp66, i32* %83
  %tem267 = load i32*, i32** %tem2
  %84 = getelementptr i32, i32* %tem267, i32 0
  %temp68 = load i32, i32* %84
  %85 = getelementptr i32, i32* %63, i32 10
  store i32 %temp68, i32* %85
  %tem269 = load i32*, i32** %tem2
  %86 = getelementptr i32, i32* %tem269, i32 1
  %temp70 = load i32, i32* %86
  %87 = getelementptr i32, i32* %63, i32 11
  store i32 %temp70, i32* %87
  %tem271 = load i32*, i32** %tem2
  %88 = getelementptr i32, i32* %tem271, i32 2
  %temp72 = load i32, i32* %88
  %89 = getelementptr i32, i32* %63, i32 12
  store i32 %temp72, i32* %89
  %tem273 = load i32*, i32** %tem2
  %90 = getelementptr i32, i32* %tem273, i32 3
  %temp74 = load i32, i32* %90
  %91 = getelementptr i32, i32* %63, i32 13
  store i32 %temp74, i32* %91
  %tem275 = load i32*, i32** %tem2
  %92 = getelementptr i32, i32* %tem275, i32 4
  %temp76 = load i32, i32* %92
  %93 = getelementptr i32, i32* %63, i32 14
  store i32 %temp76, i32* %93
  %tem277 = load i32*, i32** %tem2
  %94 = getelementptr i32, i32* %tem277, i32 5
  %temp78 = load i32, i32* %94
  %95 = getelementptr i32, i32* %63, i32 15
  store i32 %temp78, i32* %95
  %tem279 = load i32*, i32** %tem2
  %96 = getelementptr i32, i32* %tem279, i32 6
  %temp80 = load i32, i32* %96
  %97 = getelementptr i32, i32* %63, i32 16
  store i32 %temp80, i32* %97
  %tem281 = load i32*, i32** %tem2
  %98 = getelementptr i32, i32* %tem281, i32 7
  %temp82 = load i32, i32* %98
  %99 = getelementptr i32, i32* %63, i32 17
  store i32 %temp82, i32* %99
  %tem283 = load i32*, i32** %tem2
  %100 = getelementptr i32, i32* %tem283, i32 8
  %temp84 = load i32, i32* %100
  %101 = getelementptr i32, i32* %63, i32 18
  store i32 %temp84, i32* %101
  %tem285 = load i32*, i32** %tem2
  %102 = getelementptr i32, i32* %tem285, i32 9
  %temp86 = load i32, i32* %102
  %103 = getelementptr i32, i32* %63, i32 19
  store i32 %temp86, i32* %103
  store i32* %63, i32** %new_rhythm
  %instrument87 = load i32, i32* %instrument1
  %struct.ptr = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res, i32 0, i32 3
  store i32 %instrument87, i32* %struct.ptr
  %size88 = load i32, i32* %size2
  %struct.ptr89 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res, i32 0, i32 2
  store i32 %size88, i32* %struct.ptr89
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i99 = load i32, i32* %i
  %size100 = load i32, i32* %size2
  %tmp101 = icmp slt i32 %i99, %size100
  br i1 %tmp101, label %while_body, label %merge

while_body:                                       ; preds = %while
  %melody90 = load i8**, i8*** %melody3
  %i91 = load i32, i32* %i
  %104 = getelementptr i8*, i8** %melody90, i32 %i91
  %105 = load i8*, i8** %104
  %new_melody92 = load i8**, i8*** %new_melody
  %i93 = load i32, i32* %i
  %106 = getelementptr i8*, i8** %new_melody92, i32 %i93
  store i8* %105, i8** %106
  %rhythm94 = load i32*, i32** %rhythm4
  %i95 = load i32, i32* %i
  %107 = getelementptr i32, i32* %rhythm94, i32 %i95
  %108 = load i32, i32* %107
  %new_rhythm96 = load i32*, i32** %new_rhythm
  %i97 = load i32, i32* %i
  %109 = getelementptr i32, i32* %new_rhythm96, i32 %i97
  store i32 %108, i32* %109
  %i98 = load i32, i32* %i
  %tmp = add i32 %i98, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  %new_melody102 = load i8**, i8*** %new_melody
  %struct.ptr103 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res, i32 0, i32 1
  store i8** %new_melody102, i8*** %struct.ptr103
  %new_rhythm104 = load i32*, i32** %new_rhythm
  %struct.ptr105 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res, i32 0, i32 0
  store i32* %new_rhythm104, i32** %struct.ptr105
  %res106 = load { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res
  ret { i32*, i8**, i32, i32 } %res106
}

declare noalias i8* @malloc(i32)
