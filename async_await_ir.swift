// MARK: - ORGINAL CODE

public func f() async -> String { "Hello" }
public func g() async { _ = await f() }


// MARK: - General questions

/*
 1. What are all the castes that occur in functions for?
 2. How to see implementation of %swift.context %swift.bridge type ? (i tried to find implementation in swift repository by word search)
 3. How do I understand what the function that is called before each return does? (1.16, 2.22, 3.30)
*/


// MARK: - GENERATED Functions, types and attributes

attributes #0 = { "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

// Why llvm generated this empty function ?
; Function Attrs: alwaysinline
define private void @coro.devirt.trigger(i8* %0) #6 {
entry:
  ret void
}

// Configure SwiftContext structure
%swift.context = type { %swift.context*, void (%swift.context*)*, i64 }

// define empty structure
%"$s12yourtestcase1fSSyYaF.Frame" = type {}

// define structure with  %swift.context* and i8* properties
%"$s12yourtestcase1gyyYaF.Frame" = type { %swift.context*, i8* }

// MARK: - f function IR

/* Function description
 
 We are passing a context object of type %swift.context* in the function that is marked with the async keyword.

 Then we allocated memory for this contest and loaded it into the stack. Next, we form the string "Hello", get the address of the string and its size.
 We unload the context from the stack and get some function from it. And we call (step 1.16) the function that was taken out of context.
 */

// function f arguments %0 type %swift.context*
define swifttailcc void @"$s12yourtestcase1fSSyYaF"(%* swiftasync %0) #0 {
entry:

  // 1.1
  // Call empty function which llvm create
  // What is the purpose of calling this empty function ?
  call void @coro.devirt.trigger(i8* null)

  // 1.2
  // Allocate stack memory size 8 bytes. Result pointer address has type %swift.context*
  %1 = alloca %swift.context*, align 8

  // 1.3
  // Cast %0 from %swift.context* to <{ %swift.context*, void (%swift.context*)*, i32 }>
  // Why do we make the baitcast variable %0 (type: %swift.context*), if we do not use %2 further ?
  // (I have an answer, but I'm not sure about it, because there is no `await` in the function no further)
  %2 = bitcast %swift.context* %0 to <{ %swift.context*, void (%swift.context*)*, i32 }>*

  // 1.4
  // Cast undef from i8 to type {}
  // Why do we make the baitcast undef, if we do not use FramePtr ?
  %FramePtr = bitcast i8* undef to %"$s12yourtestcase1fSSyYaF.Frame"*

  // 1.5
  // Store %0 in memory (with type %swift.context*) in %1 (address type %swift.context**)
  store %swift.context* %0, %swift.context** %1, align 8

  // 1.6
  // configure "Hello"
  %3 = call swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @0, i64 0, i64 0), i64 5, i1 true)

  // 1.7 get size of string
  %4 = extractvalue { i64, %swift.bridge* } %3, 0

  // 1.8
  // get string address
  %5 = extractvalue { i64, %swift.bridge* } %3, 1

  // 1.9
  // read value with type %swift.context* from address %1 (address type %swift.context**)
  %6 = load %swift.context*, %swift.context** %1, align 8

  // 1.10
  // Cast %6 from %swift.context* to <{ %swift.context*, void (%swift.context*)*, i32 }>
  %7 = bitcast %swift.context* %6 to <{ %swift.context*, void (%swift.context*)*, i32 }>*

  // 1.11
  // Get address from <{ %swift.context*, void (%swift.context*)*, i32 }>* result type <{ %swift.context*, void (%swift.context*)*, i32 }>, access by indexes [%7][0][1]
  %8 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)*, i32 }>, <{ %swift.context*, void (%swift.context*)*, i32 }>* %7, i32 0, i32 1

  // 1.12
  // read value with type void (%swift.context*)* from address %8 (address type void (%swift.context*)**)
  %9 = load void (%swift.context*)*, void (%swift.context*)** %8, align 8

  // 1.13
  // Cast %9 from void (%swift.context*)* to void (%swift.context*, i64, %swift.bridge*)*
  %10 = bitcast void (%swift.context*)* %9 to void (%swift.context*, i64, %swift.bridge*)*

  // 1.14
  // read value with type %swift.context* from address %1 (address type %swift.context**) (x2 same in %6)
  %11 = load %swift.context*, %swift.context** %1, align 8

  // 1.15
  // cast %10 from void (%swift.context*, i64, %swift.bridge*)* to i8*
  %12 = bitcast void (%swift.context*, i64, %swift.bridge*)* %10 to i8*

  // 1.16
  // Call %10 function with params (%11: %swift.context* swiftasync, %4: i64, %5: %swift.bridge*)
  musttail call swifttailcc void %10(%swift.context* swiftasync %11, i64 %4, %swift.bridge* %5) #1

  // 1.17
  // return void
  ret void
}

// MARK: - g function IR

/* Function description
 
 I don't what this functions does
 */

// function g with arguments: %0 type %swift.context*
define swifttailcc void @"$s12yourtestcase1gyyYaF"(%swift.context* swiftasync %0) #0 {
entry:

  // 2.1
  // what is the purpose of calling this empty function ?
  call void @coro.devirt.trigger(i8* null)

  // 2.2
  // Cast %0 from %swift.context* to <{ %swift.context*, void (%swift.context*)*, i32 }>*
  %1 = bitcast %swift.context* %0 to <{ %swift.context*, void (%swift.context*)*, i32 }>*

  // 2.3
  // Cast %0 from (with type %swift.context*) to i8*
  %2 = bitcast %swift.context* %0 to i8*

  // 2.4
  // Get address starts from i8* result type i8, access by indexes [%2][24]
  %async.ctx.frameptr = getelementptr inbounds i8, i8* %2, i32 24

  // 2.5
  // Cast async.ctx.frameptr from {i8*} to {s12yourtestcase1gyyYaF.Frame}
  %FramePtr = bitcast i8* %async.ctx.frameptr to %"$s12yourtestcase1gyyYaF.Frame"*

  // 2.6
  // Get address starts from %"$s12yourtestcase1gyyYaF.Frame"* result type "$s12yourtestcase1gyyYaF.Frame", access by indexes [%FramePtr][0][0]
  %3 = getelementptr inbounds %"$s12yourtestcase1gyyYaF.Frame", %"$s12yourtestcase1gyyYaF.Frame"* %FramePtr, i32 0, i32 0

  // 2.7
  // Store %0 in memory (with type %swift.context*) in %3 (address type %swift.context**)
  store %swift.context* %0, %swift.context** %3, align 8

  // 2.8
  // %helper = getelementptr inbounds (%swift.async_func_pointer, %swift.async_func_pointer* @"$s12yourtestcase1fSSyYaFTu", i32 0, i32 1)

  // read value with type i32 from address %helper (address type i32*)
  %4 = load i32, i32* getelementptr inbounds (%swift.async_func_pointer, %swift.async_func_pointer* @"$s12yourtestcase1fSSyYaFTu", i32 0, i32 1), align 8

  // 2.9
  // fill the high order bits of the %4 value with zero bits until it reaches i64
  %5 = zext i32 %4 to i64

  // 2.10
  // Call swift_task_alloc with the %5 parameter which returns i8*
  // Which allocate task and give pointer of task
  /* void *swift::swift_task_alloc(size_t size) {
		return allocator(swift_task_getCurrent()).alloc(size);
	 }
  */
  %6 = call swiftcc i8* @swift_task_alloc(i64 %5) #1

  // 2.11
  // Get address starts from %"$s12yourtestcase1gyyYaF.Frame"* result type "$s12yourtestcase1gyyYaF.Frame", access by indexes [%FramePtr][0][1]
  %.spill.addr = getelementptr inbounds %"$s12yourtestcase1gyyYaF.Frame", %"$s12yourtestcase1gyyYaF.Frame"* %FramePtr, i32 0, i32 1

  // 2.12
  // Store %6 in memory (with type i8*) in %.spill.addr (address type i8**)
  store i8* %6, i8** %.spill.addr, align 8

  // 2.13
  // start life time of %6 (type: i8*)
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %6)

  // 2.14
  // Cast %6 from i8* to <{ %swift.context*, void (%swift.context*)*, i32 }>*
  %7 = bitcast i8* %6 to <{ %swift.context*, void (%swift.context*)*, i32 }>*

  // 2.15
  // read value with type %swift.context* from address %3 (address type %swift.context**)
  %8 = load %swift.context*, %swift.context** %3, align 8

  // 2.16
  // Get address from <{ %swift.context*, void (%swift.context*)*, i32 }>* result type <{ %swift.context*, void (%swift.context*)*, i32 }>, access by indexes [%7][0][0]
  %9 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)*, i32 }>, <{ %swift.context*, void (%swift.context*)*, i32 }>* %7, i32 0, i32 0

  // 2.17
  // Store %8 in memory (with type %swift.context*) in %9 (address type %swift.context**)
  store %swift.context* %8, %swift.context** %9, align 8

  // 2.18
  // Cast %0 from %swift.context* to i8*
  %10 = bitcast i8* bitcast (void (i8*, i64, %swift.bridge*)* @"$s12yourtestcase1gyyYaFTQ0_" to i8*) to void (%swift.context*)*

  // 2.19
  // Get address from <{ %swift.context*, void (%swift.context*)*, i32 }>* result type <{ %swift.context*, void (%swift.context*)*, i32 }>, access by indexes [%7][0][1]
  %11 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)*, i32 }>, <{ %swift.context*, void (%swift.context*)*, i32 }>* %7, i32 0, i32 1

  // 2.20
  // Store %10 in memory (%swift.context*)* in %11 (address (%swift.context*)**)
  store void (%swift.context*)* %10, void (%swift.context*)** %11, align 8

  // 2.21
  // Cast %6 from i8* to %swift.context*
  %12 = bitcast i8* %6 to %swift.context*

  // 2.22
  // call s12yourtestcase1fSSyYaF with params (%12: %swift.context*)
  musttail call swifttailcc void @"$s12yourtestcase1fSSyYaF"(%swift.context* swiftasync %12) #1

  // 2.23
  // return void
  ret void
}

// MARK: - generated function for g

define internal swifttailcc void @"$s12yourtestcase1gyyYaFTQ0_"(i8* swiftasync %0, i64 %1, %swift.bridge* %2) #0 {
entryresume.0:

  // 3.1
  //
  %3 = bitcast i8* %0 to i8**

  // 3.2
  //
  %4 = load i8*, i8** %3, align 8

  // 3.3
  // The ‘llvm.swift.async.context.addr’ intrinsic returns a pointer to the part of the extended frame record containing the asynchronous context of a Swift execution.
  %5 = call i8** @llvm.swift.async.context.addr() #1

  // 3.4
  //
  store i8* %4, i8** %5, align 8

  // 3.5
  //
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %4, i32 24

  // 3.6
  //
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s12yourtestcase1gyyYaF.Frame"

  // 3.7
  //
  %vFrame = bitcast %"$s12yourtestcase1gyyYaF.Frame"* %FramePtr to i8*

  // 3.8
  //
  %6 = getelementptr inbounds %"$s12yourtestcase1gyyYaF.Frame", %"$s12yourtestcase1gyyYaF.Frame"* %FramePtr, i32 0, i32 0

  // 3.9
  //
  %.reload.addr = getelementptr inbounds %"$s12yourtestcase1gyyYaF.Frame", %"$s12yourtestcase1gyyYaF.Frame"* %FramePtr, i32 0, i32 1

  // 3.10
  //
  %.reload = load i8*, i8** %.reload.addr, align 8

  // 3.11
  //
  %7 = bitcast i8* %0 to i8**

  // 3.12
  //
  %8 = load i8*, i8** %7, align 8

  // 3.13
  //
  %9 = call i8** @llvm.swift.async.context.addr() #1

  // 3.14
  //
  store i8* %8, i8** %9, align 8

  // 3.15
  //
  %10 = bitcast i8* %8 to %swift.context*

  // 3.16
  //
  store %swift.context* %10, %swift.context** %6, align 8

  // 3.17
  //
  %11 = insertvalue { i64, %swift.bridge* } undef, i64 %1, 0

  // 3.18
  //
  %12 = insertvalue { i64, %swift.bridge* } %11, %swift.bridge* %2, 1

  // 3.19
  //
  %13 = extractvalue { i64, %swift.bridge* } %12, 0

  // 3.20
  //
  %14 = extractvalue { i64, %swift.bridge* } %12, 1

  // сall @swift_task_dealloc
  /*
   void swift::swift_task_dealloc(void *ptr) {
	 allocator(swift_task_getCurrent()).dealloc(ptr);
   }
   */
  // 3.21
  //
  call swiftcc void @swift_task_dealloc(i8* %.reload) #1

  // 3.22
  //
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %.reload)

  // 3.23
  //
  call void @swift_bridgeObjectRelease(%swift.bridge* %14) #1

  // 3.24
  //
  %15 = load %swift.context*, %swift.context** %6, align 8

  // 3.25
  //
  %16 = bitcast %swift.context* %15 to <{ %swift.context*, void (%swift.context*)*, i32 }>*

  // 3.26
  //
  %17 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)*, i32 }>, <{ %swift.context*, void (%swift.context*)*, i32 }>* %16, i32 0, i32 1

  // 3.27
  //
  %18 = load void (%swift.context*)*, void (%swift.context*)** %17, align 8

  // 3.28
  //
  %19 = load %swift.context*, %swift.context** %6, align 8

  // 3.29
  //
  %20 = bitcast void (%swift.context*)* %18 to i8*

  // 3.30
  //
  musttail call swifttailcc void %18(%swift.context* swiftasync %19) #1

  ret void
}

