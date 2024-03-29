platform_path = unknown-platform
compiler_path = unknown-compiler
processor_path = unknown-processor
build_path  = unknown-build



PLATFORM_OSX {
platform_path = osx
}

COMPILER_CLANG
{
compiler_path = clang
}

COMPILER_GCC{
compiler_path = gcc
}




PROCESSOR_x64 {
    processor_path = x64
}

PROCESSOR_x86 {
    processor_path = x86
}

BUILD_DEBUG {
    build_path = debug
} else {
    build_path = release
}

DESTINATION_PATH =
$$platform_path/$$compiler_path/$$processor_path/$$build_path
message(Dest path: $${DESTINATION_PATH})
