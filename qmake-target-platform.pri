

macx {
CONFIG += PLATFORM_OSX
message(PLATFORM_OSX)
macx-clang {
CONFIG += COMPILER_CLANG
message(COMPILER_CLANG)
QMAKE_TARGET.arch = x86_64
}

macx-clang-32 {
CONFIG += COMPILER_CLANG
message(COMPILER_CLANG)
QMAKE_TARGET.arch = x86
}
}



contains(QMAKE_TARGET.arch,x86_64) {
    CONFIG += PROCESSOR_x64
    message(PROCESSOR_x64)
} else {
    CONFIG += PROCESSOR_x86
    message(PROCESSOR_x86)
}

CONFIG(debug,release|debug) {
    CONFIG += BUILD_DEBUG
    message(BUILD_DEBUG)
} else {
    CONFIG += BUILD_RELEASE
    message(BUILD_RELEASE)
}
