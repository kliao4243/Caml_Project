; ModuleID = 'MicroC'
source_filename = "MicroC"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"4#" = private unnamed_addr constant [4 x i8] c"1^4\00", align 1
@"4#.2" = private unnamed_addr constant [4 x i8] c"2^4\00", align 1
@"4#.3" = private unnamed_addr constant [4 x i8] c"3^4\00", align 1
@"4#.4" = private unnamed_addr constant [4 x i8] c"4^4\00", align 1
@"4#.5" = private unnamed_addr constant [4 x i8] c"5^4\00", align 1
@"4#.6" = private unnamed_addr constant [4 x i8] c"1^5\00", align 1
@"4#.7" = private unnamed_addr constant [4 x i8] c"2^5\00", align 1
@"4#.8" = private unnamed_addr constant [4 x i8] c"3^5\00", align 1
@"4#.9" = private unnamed_addr constant [4 x i8] c"4^5\00", align 1
@"4#.10" = private unnamed_addr constant [4 x i8] c"5^5\00", align 1
@"123" = private unnamed_addr constant [9 x i8] c"adsfsdaf\00", align 1
@fmt.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"123.13" = private unnamed_addr constant [12 x i8] c"track_start\00", align 1
@fmt.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.15 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"4#.16" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.17" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.18" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.19" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.20" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.21" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.22" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.23" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.24" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.25" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.26" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.27" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.28" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.29" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.30" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.31" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.32" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.33" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.34" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.35" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @puts(i8*, ...)

declare i32 @pitch_to_int(i8*, ...)

define i32 @main() {
entry:
  %i = alloca i32
  %melody_a = alloca i8**
  %rhythm_a = alloca i32*
  %melody_b = alloca i8**
  %track_1 = alloca { i32*, i8**, i32, i32 }
  %track_2 = alloca { i32*, i8**, i32, i32 }
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
  %malloccall2 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 5))
  %12 = bitcast i8* %malloccall2 to i8**
  %13 = getelementptr i8*, i8** %12, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.6", i32 0, i32 0), i8** %13
  %14 = getelementptr i8*, i8** %12, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.7", i32 0, i32 0), i8** %14
  %15 = getelementptr i8*, i8** %12, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.8", i32 0, i32 0), i8** %15
  %16 = getelementptr i8*, i8** %12, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.9", i32 0, i32 0), i8** %16
  %17 = getelementptr i8*, i8** %12, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.10", i32 0, i32 0), i8** %17
  store i8** %12, i8*** %melody_b
  %rhythm_a3 = load i32*, i32** %rhythm_a
  %melody_a4 = load i8**, i8*** %melody_a
  %build_track_result = call { i32*, i8**, i32, i32 } @build_track(i32 1, i32 5, i8** %melody_a4, i32* %rhythm_a3)
  store { i32*, i8**, i32, i32 } %build_track_result, { i32*, i8**, i32, i32 }* %track_1
  %rhythm_a5 = load i32*, i32** %rhythm_a
  %melody_b6 = load i8**, i8*** %melody_b
  %build_track_result7 = call { i32*, i8**, i32, i32 } @build_track(i32 1, i32 5, i8** %melody_b6, i32* %rhythm_a5)
  store { i32*, i8**, i32, i32 } %build_track_result7, { i32*, i8**, i32, i32 }* %track_2
  %track_18 = load { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %track_1
  %generate_music_result = call i32 @generate_music({ i32*, i8**, i32, i32 } %track_18)
  %prints = call i8* (i8*, ...) @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"123", i32 0, i32 0))
  %track_19 = load { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %track_1
  %generate_music_result10 = call i32 @generate_music({ i32*, i8**, i32, i32 } %track_19)
  ret i32 0
}

define i32 @generate_music({ i32*, i8**, i32, i32 } %t) {
entry:
  %t1 = alloca { i32*, i8**, i32, i32 }
  store { i32*, i8**, i32, i32 } %t, { i32*, i8**, i32, i32 }* %t1
  %i = alloca i32
  %prints = call i8* (i8*, ...) @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"123.13", i32 0, i32 0))
  %struct.ptr = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %t1, i32 0, i32 3
  %struct.val.instrument = load i32, i32* %struct.ptr
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.11, i32 0, i32 0), i32 %struct.val.instrument)
  %struct.ptr2 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %t1, i32 0, i32 2
  %struct.val.size = load i32, i32* %struct.ptr2
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.11, i32 0, i32 0), i32 %struct.val.size)
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
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.11, i32 0, i32 0), i32 %pitchtoint)
  %struct.ptr7 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %t1, i32 0, i32 0
  %struct.val.rhythm = load i32*, i32** %struct.ptr7
  %i8 = load i32, i32* %i
  %2 = getelementptr i32, i32* %struct.val.rhythm, i32 %i8
  %3 = load i32, i32* %2
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.11, i32 0, i32 0), i32 %3)
  %i10 = load i32, i32* %i
  %tmp = add i32 %i10, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  ret i32 0
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
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 20))
  %0 = bitcast i8* %malloccall to i8**
  %1 = getelementptr i8*, i8** %0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.16", i32 0, i32 0), i8** %1
  %2 = getelementptr i8*, i8** %0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.17", i32 0, i32 0), i8** %2
  %3 = getelementptr i8*, i8** %0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.18", i32 0, i32 0), i8** %3
  %4 = getelementptr i8*, i8** %0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.19", i32 0, i32 0), i8** %4
  %5 = getelementptr i8*, i8** %0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.20", i32 0, i32 0), i8** %5
  %6 = getelementptr i8*, i8** %0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.21", i32 0, i32 0), i8** %6
  %7 = getelementptr i8*, i8** %0, i32 6
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.22", i32 0, i32 0), i8** %7
  %8 = getelementptr i8*, i8** %0, i32 7
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.23", i32 0, i32 0), i8** %8
  %9 = getelementptr i8*, i8** %0, i32 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.24", i32 0, i32 0), i8** %9
  %10 = getelementptr i8*, i8** %0, i32 9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.25", i32 0, i32 0), i8** %10
  %11 = getelementptr i8*, i8** %0, i32 10
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.26", i32 0, i32 0), i8** %11
  %12 = getelementptr i8*, i8** %0, i32 11
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.27", i32 0, i32 0), i8** %12
  %13 = getelementptr i8*, i8** %0, i32 12
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.28", i32 0, i32 0), i8** %13
  %14 = getelementptr i8*, i8** %0, i32 13
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.29", i32 0, i32 0), i8** %14
  %15 = getelementptr i8*, i8** %0, i32 14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.30", i32 0, i32 0), i8** %15
  %16 = getelementptr i8*, i8** %0, i32 15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.31", i32 0, i32 0), i8** %16
  %17 = getelementptr i8*, i8** %0, i32 16
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.32", i32 0, i32 0), i8** %17
  %18 = getelementptr i8*, i8** %0, i32 17
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.33", i32 0, i32 0), i8** %18
  %19 = getelementptr i8*, i8** %0, i32 18
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.34", i32 0, i32 0), i8** %19
  %20 = getelementptr i8*, i8** %0, i32 19
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.35", i32 0, i32 0), i8** %20
  store i8** %0, i8*** %new_melody
  %malloccall5 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 20))
  %21 = bitcast i8* %malloccall5 to i32*
  %22 = getelementptr i32, i32* %21, i32 0
  store i32 0, i32* %22
  %23 = getelementptr i32, i32* %21, i32 1
  store i32 0, i32* %23
  %24 = getelementptr i32, i32* %21, i32 2
  store i32 0, i32* %24
  %25 = getelementptr i32, i32* %21, i32 3
  store i32 0, i32* %25
  %26 = getelementptr i32, i32* %21, i32 4
  store i32 0, i32* %26
  %27 = getelementptr i32, i32* %21, i32 5
  store i32 0, i32* %27
  %28 = getelementptr i32, i32* %21, i32 6
  store i32 0, i32* %28
  %29 = getelementptr i32, i32* %21, i32 7
  store i32 0, i32* %29
  %30 = getelementptr i32, i32* %21, i32 8
  store i32 0, i32* %30
  %31 = getelementptr i32, i32* %21, i32 9
  store i32 0, i32* %31
  %32 = getelementptr i32, i32* %21, i32 10
  store i32 0, i32* %32
  %33 = getelementptr i32, i32* %21, i32 11
  store i32 0, i32* %33
  %34 = getelementptr i32, i32* %21, i32 12
  store i32 0, i32* %34
  %35 = getelementptr i32, i32* %21, i32 13
  store i32 0, i32* %35
  %36 = getelementptr i32, i32* %21, i32 14
  store i32 0, i32* %36
  %37 = getelementptr i32, i32* %21, i32 15
  store i32 0, i32* %37
  %38 = getelementptr i32, i32* %21, i32 16
  store i32 0, i32* %38
  %39 = getelementptr i32, i32* %21, i32 17
  store i32 0, i32* %39
  %40 = getelementptr i32, i32* %21, i32 18
  store i32 0, i32* %40
  %41 = getelementptr i32, i32* %21, i32 19
  store i32 0, i32* %41
  store i32* %21, i32** %new_rhythm
  %instrument6 = load i32, i32* %instrument1
  %struct.ptr = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res, i32 0, i32 3
  store i32 %instrument6, i32* %struct.ptr
  %size7 = load i32, i32* %size2
  %struct.ptr8 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res, i32 0, i32 2
  store i32 %size7, i32* %struct.ptr8
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i18 = load i32, i32* %i
  %size19 = load i32, i32* %size2
  %tmp20 = icmp slt i32 %i18, %size19
  br i1 %tmp20, label %while_body, label %merge

while_body:                                       ; preds = %while
  %melody9 = load i8**, i8*** %melody3
  %i10 = load i32, i32* %i
  %42 = getelementptr i8*, i8** %melody9, i32 %i10
  %43 = load i8*, i8** %42
  %new_melody11 = load i8**, i8*** %new_melody
  %i12 = load i32, i32* %i
  %44 = getelementptr i8*, i8** %new_melody11, i32 %i12
  store i8* %43, i8** %44
  %rhythm13 = load i32*, i32** %rhythm4
  %i14 = load i32, i32* %i
  %45 = getelementptr i32, i32* %rhythm13, i32 %i14
  %46 = load i32, i32* %45
  %new_rhythm15 = load i32*, i32** %new_rhythm
  %i16 = load i32, i32* %i
  %47 = getelementptr i32, i32* %new_rhythm15, i32 %i16
  store i32 %46, i32* %47
  %i17 = load i32, i32* %i
  %tmp = add i32 %i17, 1
  store i32 %tmp, i32* %i
  br label %while

merge:                                            ; preds = %while
  %new_melody21 = load i8**, i8*** %new_melody
  %struct.ptr22 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res, i32 0, i32 1
  store i8** %new_melody21, i8*** %struct.ptr22
  %new_rhythm23 = load i32*, i32** %new_rhythm
  %struct.ptr24 = getelementptr inbounds { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res, i32 0, i32 0
  store i32* %new_rhythm23, i32** %struct.ptr24
  %res25 = load { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %res
  ret { i32*, i8**, i32, i32 } %res25
}

declare noalias i8* @malloc(i32)