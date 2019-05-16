; ModuleID = 'MicroC'
source_filename = "MicroC"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"123" = private unnamed_addr constant [12 x i8] c"track_start\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"4#" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.4" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.5" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.6" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.7" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.8" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.9" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
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
@"4#.20" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.21" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@"4#.22" = private unnamed_addr constant [4 x i8] c"1b1\00", align 1
@fmt.23 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.24 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@"4#.25" = private unnamed_addr constant [4 x i8] c"1^4\00", align 1
@"4#.26" = private unnamed_addr constant [4 x i8] c"1^4\00", align 1
@"4#.27" = private unnamed_addr constant [4 x i8] c"5^4\00", align 1
@"4#.28" = private unnamed_addr constant [4 x i8] c"5^4\00", align 1
@"4#.29" = private unnamed_addr constant [4 x i8] c"6^4\00", align 1
@"4#.30" = private unnamed_addr constant [4 x i8] c"6^4\00", align 1
@"4#.31" = private unnamed_addr constant [4 x i8] c"5^4\00", align 1
@"4#.32" = private unnamed_addr constant [4 x i8] c"4^4\00", align 1
@"4#.33" = private unnamed_addr constant [4 x i8] c"4^4\00", align 1
@"4#.34" = private unnamed_addr constant [4 x i8] c"3^4\00", align 1
@"4#.35" = private unnamed_addr constant [4 x i8] c"3^4\00", align 1
@"4#.36" = private unnamed_addr constant [4 x i8] c"2^4\00", align 1
@"4#.37" = private unnamed_addr constant [4 x i8] c"2^4\00", align 1
@"4#.38" = private unnamed_addr constant [4 x i8] c"1^4\00", align 1

declare i32 @printf(i8*, ...)

declare i8* @puts(i8*, ...)

declare i32 @pitch_to_int(i8*, ...)

define void @generate_music({ i32*, i8**, i32, i32 } %t) {
entry:
  %t1 = alloca { i32*, i8**, i32, i32 }
  store { i32*, i8**, i32, i32 } %t, { i32*, i8**, i32, i32 }* %t1
  %i = alloca i32
  %prints = call i8* (i8*, ...) @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"123", i32 0, i32 0))
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
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 20))
  %0 = bitcast i8* %malloccall to i8**
  %1 = getelementptr i8*, i8** %0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#", i32 0, i32 0), i8** %1
  %2 = getelementptr i8*, i8** %0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.4", i32 0, i32 0), i8** %2
  %3 = getelementptr i8*, i8** %0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.5", i32 0, i32 0), i8** %3
  %4 = getelementptr i8*, i8** %0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.6", i32 0, i32 0), i8** %4
  %5 = getelementptr i8*, i8** %0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.7", i32 0, i32 0), i8** %5
  %6 = getelementptr i8*, i8** %0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.8", i32 0, i32 0), i8** %6
  %7 = getelementptr i8*, i8** %0, i32 6
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.9", i32 0, i32 0), i8** %7
  %8 = getelementptr i8*, i8** %0, i32 7
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.10", i32 0, i32 0), i8** %8
  %9 = getelementptr i8*, i8** %0, i32 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.11", i32 0, i32 0), i8** %9
  %10 = getelementptr i8*, i8** %0, i32 9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.12", i32 0, i32 0), i8** %10
  %11 = getelementptr i8*, i8** %0, i32 10
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.13", i32 0, i32 0), i8** %11
  %12 = getelementptr i8*, i8** %0, i32 11
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.14", i32 0, i32 0), i8** %12
  %13 = getelementptr i8*, i8** %0, i32 12
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.15", i32 0, i32 0), i8** %13
  %14 = getelementptr i8*, i8** %0, i32 13
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.16", i32 0, i32 0), i8** %14
  %15 = getelementptr i8*, i8** %0, i32 14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.17", i32 0, i32 0), i8** %15
  %16 = getelementptr i8*, i8** %0, i32 15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.18", i32 0, i32 0), i8** %16
  %17 = getelementptr i8*, i8** %0, i32 16
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.19", i32 0, i32 0), i8** %17
  %18 = getelementptr i8*, i8** %0, i32 17
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.20", i32 0, i32 0), i8** %18
  %19 = getelementptr i8*, i8** %0, i32 18
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.21", i32 0, i32 0), i8** %19
  %20 = getelementptr i8*, i8** %0, i32 19
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.22", i32 0, i32 0), i8** %20
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

define i32 @main() {
entry:
  %i = alloca i32
  %a = alloca i32
  %track = alloca { i32*, i8**, i32, i32 }
  %first = alloca i8**
  %second = alloca i8**
  %total = alloca i8**
  %rhythm = alloca i32*
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 7))
  %0 = bitcast i8* %malloccall to i8**
  %1 = getelementptr i8*, i8** %0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.25", i32 0, i32 0), i8** %1
  %2 = getelementptr i8*, i8** %0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.26", i32 0, i32 0), i8** %2
  %3 = getelementptr i8*, i8** %0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.27", i32 0, i32 0), i8** %3
  %4 = getelementptr i8*, i8** %0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.28", i32 0, i32 0), i8** %4
  %5 = getelementptr i8*, i8** %0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.29", i32 0, i32 0), i8** %5
  %6 = getelementptr i8*, i8** %0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.30", i32 0, i32 0), i8** %6
  %7 = getelementptr i8*, i8** %0, i32 6
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.31", i32 0, i32 0), i8** %7
  store i8** %0, i8*** %first
  %malloccall1 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 7))
  %8 = bitcast i8* %malloccall1 to i8**
  %9 = getelementptr i8*, i8** %8, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.32", i32 0, i32 0), i8** %9
  %10 = getelementptr i8*, i8** %8, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.33", i32 0, i32 0), i8** %10
  %11 = getelementptr i8*, i8** %8, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.34", i32 0, i32 0), i8** %11
  %12 = getelementptr i8*, i8** %8, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.35", i32 0, i32 0), i8** %12
  %13 = getelementptr i8*, i8** %8, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.36", i32 0, i32 0), i8** %13
  %14 = getelementptr i8*, i8** %8, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.37", i32 0, i32 0), i8** %14
  %15 = getelementptr i8*, i8** %8, i32 6
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"4#.38", i32 0, i32 0), i8** %15
  store i8** %8, i8*** %second
  %malloccall2 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 20))
  %16 = bitcast i8* %malloccall2 to i8**
  %first3 = load i8**, i8*** %first
  %17 = getelementptr i8*, i8** %first3, i32 0
  %temp = load i8*, i8** %17
  %18 = getelementptr i8*, i8** %16, i32 0
  store i8* %temp, i8** %18
  %first4 = load i8**, i8*** %first
  %19 = getelementptr i8*, i8** %first4, i32 1
  %temp5 = load i8*, i8** %19
  %20 = getelementptr i8*, i8** %16, i32 1
  store i8* %temp5, i8** %20
  %first6 = load i8**, i8*** %first
  %21 = getelementptr i8*, i8** %first6, i32 2
  %temp7 = load i8*, i8** %21
  %22 = getelementptr i8*, i8** %16, i32 2
  store i8* %temp7, i8** %22
  %first8 = load i8**, i8*** %first
  %23 = getelementptr i8*, i8** %first8, i32 3
  %temp9 = load i8*, i8** %23
  %24 = getelementptr i8*, i8** %16, i32 3
  store i8* %temp9, i8** %24
  %first10 = load i8**, i8*** %first
  %25 = getelementptr i8*, i8** %first10, i32 4
  %temp11 = load i8*, i8** %25
  %26 = getelementptr i8*, i8** %16, i32 4
  store i8* %temp11, i8** %26
  %first12 = load i8**, i8*** %first
  %27 = getelementptr i8*, i8** %first12, i32 5
  %temp13 = load i8*, i8** %27
  %28 = getelementptr i8*, i8** %16, i32 5
  store i8* %temp13, i8** %28
  %first14 = load i8**, i8*** %first
  %29 = getelementptr i8*, i8** %first14, i32 6
  %temp15 = load i8*, i8** %29
  %30 = getelementptr i8*, i8** %16, i32 6
  store i8* %temp15, i8** %30
  %first16 = load i8**, i8*** %first
  %31 = getelementptr i8*, i8** %first16, i32 7
  %temp17 = load i8*, i8** %31
  %32 = getelementptr i8*, i8** %16, i32 7
  store i8* %temp17, i8** %32
  %first18 = load i8**, i8*** %first
  %33 = getelementptr i8*, i8** %first18, i32 8
  %temp19 = load i8*, i8** %33
  %34 = getelementptr i8*, i8** %16, i32 8
  store i8* %temp19, i8** %34
  %first20 = load i8**, i8*** %first
  %35 = getelementptr i8*, i8** %first20, i32 9
  %temp21 = load i8*, i8** %35
  %36 = getelementptr i8*, i8** %16, i32 9
  store i8* %temp21, i8** %36
  %second22 = load i8**, i8*** %second
  %37 = getelementptr i8*, i8** %second22, i32 0
  %temp23 = load i8*, i8** %37
  %38 = getelementptr i8*, i8** %16, i32 10
  store i8* %temp23, i8** %38
  %second24 = load i8**, i8*** %second
  %39 = getelementptr i8*, i8** %second24, i32 1
  %temp25 = load i8*, i8** %39
  %40 = getelementptr i8*, i8** %16, i32 11
  store i8* %temp25, i8** %40
  %second26 = load i8**, i8*** %second
  %41 = getelementptr i8*, i8** %second26, i32 2
  %temp27 = load i8*, i8** %41
  %42 = getelementptr i8*, i8** %16, i32 12
  store i8* %temp27, i8** %42
  %second28 = load i8**, i8*** %second
  %43 = getelementptr i8*, i8** %second28, i32 3
  %temp29 = load i8*, i8** %43
  %44 = getelementptr i8*, i8** %16, i32 13
  store i8* %temp29, i8** %44
  %second30 = load i8**, i8*** %second
  %45 = getelementptr i8*, i8** %second30, i32 4
  %temp31 = load i8*, i8** %45
  %46 = getelementptr i8*, i8** %16, i32 14
  store i8* %temp31, i8** %46
  %second32 = load i8**, i8*** %second
  %47 = getelementptr i8*, i8** %second32, i32 5
  %temp33 = load i8*, i8** %47
  %48 = getelementptr i8*, i8** %16, i32 15
  store i8* %temp33, i8** %48
  %second34 = load i8**, i8*** %second
  %49 = getelementptr i8*, i8** %second34, i32 6
  %temp35 = load i8*, i8** %49
  %50 = getelementptr i8*, i8** %16, i32 16
  store i8* %temp35, i8** %50
  %second36 = load i8**, i8*** %second
  %51 = getelementptr i8*, i8** %second36, i32 7
  %temp37 = load i8*, i8** %51
  %52 = getelementptr i8*, i8** %16, i32 17
  store i8* %temp37, i8** %52
  %second38 = load i8**, i8*** %second
  %53 = getelementptr i8*, i8** %second38, i32 8
  %temp39 = load i8*, i8** %53
  %54 = getelementptr i8*, i8** %16, i32 18
  store i8* %temp39, i8** %54
  %second40 = load i8**, i8*** %second
  %55 = getelementptr i8*, i8** %second40, i32 9
  %temp41 = load i8*, i8** %55
  %56 = getelementptr i8*, i8** %16, i32 19
  store i8* %temp41, i8** %56
  store i8** %16, i8*** %total
  %malloccall42 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 14))
  %57 = bitcast i8* %malloccall42 to i32*
  %58 = getelementptr i32, i32* %57, i32 0
  store i32 2, i32* %58
  %59 = getelementptr i32, i32* %57, i32 1
  store i32 2, i32* %59
  %60 = getelementptr i32, i32* %57, i32 2
  store i32 2, i32* %60
  %61 = getelementptr i32, i32* %57, i32 3
  store i32 2, i32* %61
  %62 = getelementptr i32, i32* %57, i32 4
  store i32 2, i32* %62
  %63 = getelementptr i32, i32* %57, i32 5
  store i32 2, i32* %63
  %64 = getelementptr i32, i32* %57, i32 6
  store i32 1, i32* %64
  %65 = getelementptr i32, i32* %57, i32 7
  store i32 2, i32* %65
  %66 = getelementptr i32, i32* %57, i32 8
  store i32 2, i32* %66
  %67 = getelementptr i32, i32* %57, i32 9
  store i32 2, i32* %67
  %68 = getelementptr i32, i32* %57, i32 10
  store i32 2, i32* %68
  %69 = getelementptr i32, i32* %57, i32 11
  store i32 2, i32* %69
  %70 = getelementptr i32, i32* %57, i32 12
  store i32 2, i32* %70
  %71 = getelementptr i32, i32* %57, i32 13
  store i32 1, i32* %71
  store i32* %57, i32** %rhythm
  %rhythm43 = load i32*, i32** %rhythm
  %total44 = load i8**, i8*** %total
  %build_track_result = call { i32*, i8**, i32, i32 } @build_track(i32 1, i32 14, i8** %total44, i32* %rhythm43)
  store { i32*, i8**, i32, i32 } %build_track_result, { i32*, i8**, i32, i32 }* %track
  %track45 = load { i32*, i8**, i32, i32 }, { i32*, i8**, i32, i32 }* %track
  call void @generate_music({ i32*, i8**, i32, i32 } %track45)
  ret i32 0
}

declare noalias i8* @malloc(i32)
