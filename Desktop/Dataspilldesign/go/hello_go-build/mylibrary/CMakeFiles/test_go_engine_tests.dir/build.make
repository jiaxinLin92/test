# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Jessie/Desktop/Dataspilldesign/go/hello_go

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build

# Include any dependencies generated for this target.
include mylibrary/CMakeFiles/test_go_engine_tests.dir/depend.make

# Include the progress variables for this target.
include mylibrary/CMakeFiles/test_go_engine_tests.dir/progress.make

# Include the compile flags for this target's objects.
include mylibrary/CMakeFiles/test_go_engine_tests.dir/flags.make

mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o: mylibrary/CMakeFiles/test_go_engine_tests.dir/flags.make
mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/mylibrary/tests/go_engine_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/mylibrary && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o -c /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/mylibrary/tests/go_engine_tests.cpp

mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.i"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/mylibrary && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/mylibrary/tests/go_engine_tests.cpp > CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.i

mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.s"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/mylibrary && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/mylibrary/tests/go_engine_tests.cpp -o CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.s

mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o.requires:

.PHONY : mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o.requires

mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o.provides: mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o.requires
	$(MAKE) -f mylibrary/CMakeFiles/test_go_engine_tests.dir/build.make mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o.provides.build
.PHONY : mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o.provides

mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o.provides.build: mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o


# Object files for target test_go_engine_tests
test_go_engine_tests_OBJECTS = \
"CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o"

# External object files for target test_go_engine_tests
test_go_engine_tests_EXTERNAL_OBJECTS =

mylibrary/test_go_engine_tests: mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o
mylibrary/test_go_engine_tests: mylibrary/CMakeFiles/test_go_engine_tests.dir/build.make
mylibrary/test_go_engine_tests: mylibrary/libmylibrary.dylib
mylibrary/test_go_engine_tests: /Users/Jessie/Desktop/gtest-1.7.0/BUILD/libgtest.a
mylibrary/test_go_engine_tests: /Users/Jessie/Desktop/gtest-1.7.0/BUILD/libgtest_main.a
mylibrary/test_go_engine_tests: mylibrary/CMakeFiles/test_go_engine_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_go_engine_tests"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/mylibrary && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_go_engine_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mylibrary/CMakeFiles/test_go_engine_tests.dir/build: mylibrary/test_go_engine_tests

.PHONY : mylibrary/CMakeFiles/test_go_engine_tests.dir/build

mylibrary/CMakeFiles/test_go_engine_tests.dir/requires: mylibrary/CMakeFiles/test_go_engine_tests.dir/tests/go_engine_tests.cpp.o.requires

.PHONY : mylibrary/CMakeFiles/test_go_engine_tests.dir/requires

mylibrary/CMakeFiles/test_go_engine_tests.dir/clean:
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/mylibrary && $(CMAKE_COMMAND) -P CMakeFiles/test_go_engine_tests.dir/cmake_clean.cmake
.PHONY : mylibrary/CMakeFiles/test_go_engine_tests.dir/clean

mylibrary/CMakeFiles/test_go_engine_tests.dir/depend:
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Jessie/Desktop/Dataspilldesign/go/hello_go /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/mylibrary /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/mylibrary /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/mylibrary/CMakeFiles/test_go_engine_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mylibrary/CMakeFiles/test_go_engine_tests.dir/depend

