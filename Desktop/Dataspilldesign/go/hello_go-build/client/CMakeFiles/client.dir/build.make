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
include client/CMakeFiles/client.dir/depend.make

# Include the progress variables for this target.
include client/CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include client/CMakeFiles/client.dir/flags.make

client/moc_goenginemodel.cpp: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/goenginemodel.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating moc_goenginemodel.cpp"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Users/Jessie/Qt/5.5/clang_64/bin/moc @/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/moc_goenginemodel.cpp_parameters

client/moc_guiapplication.cpp: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/guiapplication.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating moc_guiapplication.cpp"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Users/Jessie/Qt/5.5/clang_64/bin/moc @/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/moc_guiapplication.cpp_parameters

client/qrc_qml.cpp: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/resources/qml/gui.qml
client/qrc_qml.cpp: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/resources/gfx/wood_background.jpg
client/qrc_qml.cpp: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/resources/qml/SwipeArea.qml
client/qrc_qml.cpp: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/resources/qml/BoardSquare.qml
client/qrc_qml.cpp: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/resources/qml/BoardView.qml
client/qrc_qml.cpp: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/resources/qml/GameBoardPage.qml
client/qrc_qml.cpp: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/resources/qml/NewGamePage.qml
client/qrc_qml.cpp: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/resources/gfx/tokidoki-hello-kitty.jpg
client/qrc_qml.cpp: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/resources/gfx/20121014085204985.jpg
client/qrc_qml.cpp: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/resources/qml.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating qrc_qml.cpp"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Users/Jessie/Qt/5.5/clang_64/bin/rcc --name qml --output /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/qrc_qml.cpp /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/resources/qml.qrc

client/CMakeFiles/client.dir/goenginemodel.cpp.o: client/CMakeFiles/client.dir/flags.make
client/CMakeFiles/client.dir/goenginemodel.cpp.o: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/goenginemodel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object client/CMakeFiles/client.dir/goenginemodel.cpp.o"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/client.dir/goenginemodel.cpp.o -c /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/goenginemodel.cpp

client/CMakeFiles/client.dir/goenginemodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/goenginemodel.cpp.i"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/goenginemodel.cpp > CMakeFiles/client.dir/goenginemodel.cpp.i

client/CMakeFiles/client.dir/goenginemodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/goenginemodel.cpp.s"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/goenginemodel.cpp -o CMakeFiles/client.dir/goenginemodel.cpp.s

client/CMakeFiles/client.dir/goenginemodel.cpp.o.requires:

.PHONY : client/CMakeFiles/client.dir/goenginemodel.cpp.o.requires

client/CMakeFiles/client.dir/goenginemodel.cpp.o.provides: client/CMakeFiles/client.dir/goenginemodel.cpp.o.requires
	$(MAKE) -f client/CMakeFiles/client.dir/build.make client/CMakeFiles/client.dir/goenginemodel.cpp.o.provides.build
.PHONY : client/CMakeFiles/client.dir/goenginemodel.cpp.o.provides

client/CMakeFiles/client.dir/goenginemodel.cpp.o.provides.build: client/CMakeFiles/client.dir/goenginemodel.cpp.o


client/CMakeFiles/client.dir/client.cpp.o: client/CMakeFiles/client.dir/flags.make
client/CMakeFiles/client.dir/client.cpp.o: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object client/CMakeFiles/client.dir/client.cpp.o"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/client.dir/client.cpp.o -c /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/client.cpp

client/CMakeFiles/client.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/client.cpp.i"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/client.cpp > CMakeFiles/client.dir/client.cpp.i

client/CMakeFiles/client.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/client.cpp.s"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/client.cpp -o CMakeFiles/client.dir/client.cpp.s

client/CMakeFiles/client.dir/client.cpp.o.requires:

.PHONY : client/CMakeFiles/client.dir/client.cpp.o.requires

client/CMakeFiles/client.dir/client.cpp.o.provides: client/CMakeFiles/client.dir/client.cpp.o.requires
	$(MAKE) -f client/CMakeFiles/client.dir/build.make client/CMakeFiles/client.dir/client.cpp.o.provides.build
.PHONY : client/CMakeFiles/client.dir/client.cpp.o.provides

client/CMakeFiles/client.dir/client.cpp.o.provides.build: client/CMakeFiles/client.dir/client.cpp.o


client/CMakeFiles/client.dir/guiapplication.cpp.o: client/CMakeFiles/client.dir/flags.make
client/CMakeFiles/client.dir/guiapplication.cpp.o: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/guiapplication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object client/CMakeFiles/client.dir/guiapplication.cpp.o"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/client.dir/guiapplication.cpp.o -c /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/guiapplication.cpp

client/CMakeFiles/client.dir/guiapplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/guiapplication.cpp.i"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/guiapplication.cpp > CMakeFiles/client.dir/guiapplication.cpp.i

client/CMakeFiles/client.dir/guiapplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/guiapplication.cpp.s"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client/guiapplication.cpp -o CMakeFiles/client.dir/guiapplication.cpp.s

client/CMakeFiles/client.dir/guiapplication.cpp.o.requires:

.PHONY : client/CMakeFiles/client.dir/guiapplication.cpp.o.requires

client/CMakeFiles/client.dir/guiapplication.cpp.o.provides: client/CMakeFiles/client.dir/guiapplication.cpp.o.requires
	$(MAKE) -f client/CMakeFiles/client.dir/build.make client/CMakeFiles/client.dir/guiapplication.cpp.o.provides.build
.PHONY : client/CMakeFiles/client.dir/guiapplication.cpp.o.provides

client/CMakeFiles/client.dir/guiapplication.cpp.o.provides.build: client/CMakeFiles/client.dir/guiapplication.cpp.o


client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o: client/CMakeFiles/client.dir/flags.make
client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o: client/moc_goenginemodel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/client.dir/moc_goenginemodel.cpp.o -c /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/moc_goenginemodel.cpp

client/CMakeFiles/client.dir/moc_goenginemodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/moc_goenginemodel.cpp.i"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/moc_goenginemodel.cpp > CMakeFiles/client.dir/moc_goenginemodel.cpp.i

client/CMakeFiles/client.dir/moc_goenginemodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/moc_goenginemodel.cpp.s"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/moc_goenginemodel.cpp -o CMakeFiles/client.dir/moc_goenginemodel.cpp.s

client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o.requires:

.PHONY : client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o.requires

client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o.provides: client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o.requires
	$(MAKE) -f client/CMakeFiles/client.dir/build.make client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o.provides.build
.PHONY : client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o.provides

client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o.provides.build: client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o


client/CMakeFiles/client.dir/moc_guiapplication.cpp.o: client/CMakeFiles/client.dir/flags.make
client/CMakeFiles/client.dir/moc_guiapplication.cpp.o: client/moc_guiapplication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object client/CMakeFiles/client.dir/moc_guiapplication.cpp.o"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/client.dir/moc_guiapplication.cpp.o -c /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/moc_guiapplication.cpp

client/CMakeFiles/client.dir/moc_guiapplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/moc_guiapplication.cpp.i"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/moc_guiapplication.cpp > CMakeFiles/client.dir/moc_guiapplication.cpp.i

client/CMakeFiles/client.dir/moc_guiapplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/moc_guiapplication.cpp.s"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/moc_guiapplication.cpp -o CMakeFiles/client.dir/moc_guiapplication.cpp.s

client/CMakeFiles/client.dir/moc_guiapplication.cpp.o.requires:

.PHONY : client/CMakeFiles/client.dir/moc_guiapplication.cpp.o.requires

client/CMakeFiles/client.dir/moc_guiapplication.cpp.o.provides: client/CMakeFiles/client.dir/moc_guiapplication.cpp.o.requires
	$(MAKE) -f client/CMakeFiles/client.dir/build.make client/CMakeFiles/client.dir/moc_guiapplication.cpp.o.provides.build
.PHONY : client/CMakeFiles/client.dir/moc_guiapplication.cpp.o.provides

client/CMakeFiles/client.dir/moc_guiapplication.cpp.o.provides.build: client/CMakeFiles/client.dir/moc_guiapplication.cpp.o


client/CMakeFiles/client.dir/qrc_qml.cpp.o: client/CMakeFiles/client.dir/flags.make
client/CMakeFiles/client.dir/qrc_qml.cpp.o: client/qrc_qml.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object client/CMakeFiles/client.dir/qrc_qml.cpp.o"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/client.dir/qrc_qml.cpp.o -c /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/qrc_qml.cpp

client/CMakeFiles/client.dir/qrc_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/qrc_qml.cpp.i"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/qrc_qml.cpp > CMakeFiles/client.dir/qrc_qml.cpp.i

client/CMakeFiles/client.dir/qrc_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/qrc_qml.cpp.s"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/qrc_qml.cpp -o CMakeFiles/client.dir/qrc_qml.cpp.s

client/CMakeFiles/client.dir/qrc_qml.cpp.o.requires:

.PHONY : client/CMakeFiles/client.dir/qrc_qml.cpp.o.requires

client/CMakeFiles/client.dir/qrc_qml.cpp.o.provides: client/CMakeFiles/client.dir/qrc_qml.cpp.o.requires
	$(MAKE) -f client/CMakeFiles/client.dir/build.make client/CMakeFiles/client.dir/qrc_qml.cpp.o.provides.build
.PHONY : client/CMakeFiles/client.dir/qrc_qml.cpp.o.provides

client/CMakeFiles/client.dir/qrc_qml.cpp.o.provides.build: client/CMakeFiles/client.dir/qrc_qml.cpp.o


# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/goenginemodel.cpp.o" \
"CMakeFiles/client.dir/client.cpp.o" \
"CMakeFiles/client.dir/guiapplication.cpp.o" \
"CMakeFiles/client.dir/moc_goenginemodel.cpp.o" \
"CMakeFiles/client.dir/moc_guiapplication.cpp.o" \
"CMakeFiles/client.dir/qrc_qml.cpp.o"

# External object files for target client
client_EXTERNAL_OBJECTS =

client/client: client/CMakeFiles/client.dir/goenginemodel.cpp.o
client/client: client/CMakeFiles/client.dir/client.cpp.o
client/client: client/CMakeFiles/client.dir/guiapplication.cpp.o
client/client: client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o
client/client: client/CMakeFiles/client.dir/moc_guiapplication.cpp.o
client/client: client/CMakeFiles/client.dir/qrc_qml.cpp.o
client/client: client/CMakeFiles/client.dir/build.make
client/client: mylibrary/libmylibrary.dylib
client/client: /Users/Jessie/Qt/5.5/clang_64/lib/QtQuick.framework/QtQuick
client/client: /Users/Jessie/Qt/5.5/clang_64/lib/QtGui.framework/QtGui
client/client: /Users/Jessie/Qt/5.5/clang_64/lib/QtQml.framework/QtQml
client/client: /Users/Jessie/Qt/5.5/clang_64/lib/QtNetwork.framework/QtNetwork
client/client: /Users/Jessie/Qt/5.5/clang_64/lib/QtCore.framework/QtCore
client/client: client/CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable client"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
client/CMakeFiles/client.dir/build: client/client

.PHONY : client/CMakeFiles/client.dir/build

client/CMakeFiles/client.dir/requires: client/CMakeFiles/client.dir/goenginemodel.cpp.o.requires
client/CMakeFiles/client.dir/requires: client/CMakeFiles/client.dir/client.cpp.o.requires
client/CMakeFiles/client.dir/requires: client/CMakeFiles/client.dir/guiapplication.cpp.o.requires
client/CMakeFiles/client.dir/requires: client/CMakeFiles/client.dir/moc_goenginemodel.cpp.o.requires
client/CMakeFiles/client.dir/requires: client/CMakeFiles/client.dir/moc_guiapplication.cpp.o.requires
client/CMakeFiles/client.dir/requires: client/CMakeFiles/client.dir/qrc_qml.cpp.o.requires

.PHONY : client/CMakeFiles/client.dir/requires

client/CMakeFiles/client.dir/clean:
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client && $(CMAKE_COMMAND) -P CMakeFiles/client.dir/cmake_clean.cmake
.PHONY : client/CMakeFiles/client.dir/clean

client/CMakeFiles/client.dir/depend: client/moc_goenginemodel.cpp
client/CMakeFiles/client.dir/depend: client/moc_guiapplication.cpp
client/CMakeFiles/client.dir/depend: client/qrc_qml.cpp
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Jessie/Desktop/Dataspilldesign/go/hello_go /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/client /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/client/CMakeFiles/client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : client/CMakeFiles/client.dir/depend

