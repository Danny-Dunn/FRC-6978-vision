# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/malc/Documents/FRC-6978-vision/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/malc/Documents/FRC-6978-vision/examples/build

# Include any dependencies generated for this target.
include inrange/CMakeFiles/inrange.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include inrange/CMakeFiles/inrange.dir/compiler_depend.make

# Include the progress variables for this target.
include inrange/CMakeFiles/inrange.dir/progress.make

# Include the compile flags for this target's objects.
include inrange/CMakeFiles/inrange.dir/flags.make

inrange/CMakeFiles/inrange.dir/inrange.cpp.o: inrange/CMakeFiles/inrange.dir/flags.make
inrange/CMakeFiles/inrange.dir/inrange.cpp.o: ../inrange/inrange.cpp
inrange/CMakeFiles/inrange.dir/inrange.cpp.o: inrange/CMakeFiles/inrange.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/malc/Documents/FRC-6978-vision/examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object inrange/CMakeFiles/inrange.dir/inrange.cpp.o"
	cd /home/malc/Documents/FRC-6978-vision/examples/build/inrange && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT inrange/CMakeFiles/inrange.dir/inrange.cpp.o -MF CMakeFiles/inrange.dir/inrange.cpp.o.d -o CMakeFiles/inrange.dir/inrange.cpp.o -c /home/malc/Documents/FRC-6978-vision/examples/inrange/inrange.cpp

inrange/CMakeFiles/inrange.dir/inrange.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/inrange.dir/inrange.cpp.i"
	cd /home/malc/Documents/FRC-6978-vision/examples/build/inrange && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/malc/Documents/FRC-6978-vision/examples/inrange/inrange.cpp > CMakeFiles/inrange.dir/inrange.cpp.i

inrange/CMakeFiles/inrange.dir/inrange.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/inrange.dir/inrange.cpp.s"
	cd /home/malc/Documents/FRC-6978-vision/examples/build/inrange && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/malc/Documents/FRC-6978-vision/examples/inrange/inrange.cpp -o CMakeFiles/inrange.dir/inrange.cpp.s

# Object files for target inrange
inrange_OBJECTS = \
"CMakeFiles/inrange.dir/inrange.cpp.o"

# External object files for target inrange
inrange_EXTERNAL_OBJECTS =

inrange/inrange: inrange/CMakeFiles/inrange.dir/inrange.cpp.o
inrange/inrange: inrange/CMakeFiles/inrange.dir/build.make
inrange/inrange: inrange/CMakeFiles/inrange.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/malc/Documents/FRC-6978-vision/examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable inrange"
	cd /home/malc/Documents/FRC-6978-vision/examples/build/inrange && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/inrange.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
inrange/CMakeFiles/inrange.dir/build: inrange/inrange
.PHONY : inrange/CMakeFiles/inrange.dir/build

inrange/CMakeFiles/inrange.dir/clean:
	cd /home/malc/Documents/FRC-6978-vision/examples/build/inrange && $(CMAKE_COMMAND) -P CMakeFiles/inrange.dir/cmake_clean.cmake
.PHONY : inrange/CMakeFiles/inrange.dir/clean

inrange/CMakeFiles/inrange.dir/depend:
	cd /home/malc/Documents/FRC-6978-vision/examples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/malc/Documents/FRC-6978-vision/examples /home/malc/Documents/FRC-6978-vision/examples/inrange /home/malc/Documents/FRC-6978-vision/examples/build /home/malc/Documents/FRC-6978-vision/examples/build/inrange /home/malc/Documents/FRC-6978-vision/examples/build/inrange/CMakeFiles/inrange.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : inrange/CMakeFiles/inrange.dir/depend

