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

# Utility rule file for report.

# Include the progress variables for this target.
include report/CMakeFiles/report.dir/progress.make

report/CMakeFiles/report: report/report.pdf


report/report.pdf: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/report/bibliography.bib
report/report.pdf: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/report/dat/benchmark_vector_reserve.dat
report/report.pdf: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/report/dat/benchmark_vector_stl.dat
report/report.pdf: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/report/dat/benchmark_stl_sort.dat
report/report.pdf: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/report/dat/benchmark_mylib_bubble.dat
report/report.pdf: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/report/dat/benchmark_mylib_shell.dat
report/report.pdf: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/report/gfx/lena.png
report/report.pdf: /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/report/report.tex
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating report.pdf"
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/report && pdflatex -output-directory=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/report /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/report/report
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/report && /Applications/CMake.app/Contents/bin/cmake -E chdir /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/report bibtex report
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/report && pdflatex -output-directory=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/report /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/report/report
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/report && pdflatex -output-directory=/Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/report /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/report/report

report: report/CMakeFiles/report
report: report/report.pdf
report: report/CMakeFiles/report.dir/build.make

.PHONY : report

# Rule to build all files generated by this target.
report/CMakeFiles/report.dir/build: report

.PHONY : report/CMakeFiles/report.dir/build

report/CMakeFiles/report.dir/clean:
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/report && $(CMAKE_COMMAND) -P CMakeFiles/report.dir/cmake_clean.cmake
.PHONY : report/CMakeFiles/report.dir/clean

report/CMakeFiles/report.dir/depend:
	cd /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Jessie/Desktop/Dataspilldesign/go/hello_go /Users/Jessie/Desktop/Dataspilldesign/go/hello_go/report /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/report /Users/Jessie/Desktop/Dataspilldesign/go/hello_go-build/report/CMakeFiles/report.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : report/CMakeFiles/report.dir/depend
