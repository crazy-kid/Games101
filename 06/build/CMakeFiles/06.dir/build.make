# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/build"

# Include any dependencies generated for this target.
include CMakeFiles/06.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/06.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/06.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/06.dir/flags.make

CMakeFiles/06.dir/main.cpp.o: CMakeFiles/06.dir/flags.make
CMakeFiles/06.dir/main.cpp.o: ../main.cpp
CMakeFiles/06.dir/main.cpp.o: CMakeFiles/06.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/06.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/06.dir/main.cpp.o -MF CMakeFiles/06.dir/main.cpp.o.d -o CMakeFiles/06.dir/main.cpp.o -c "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/main.cpp"

CMakeFiles/06.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/06.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/main.cpp" > CMakeFiles/06.dir/main.cpp.i

CMakeFiles/06.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/06.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/main.cpp" -o CMakeFiles/06.dir/main.cpp.s

CMakeFiles/06.dir/Vector.cpp.o: CMakeFiles/06.dir/flags.make
CMakeFiles/06.dir/Vector.cpp.o: ../Vector.cpp
CMakeFiles/06.dir/Vector.cpp.o: CMakeFiles/06.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/06.dir/Vector.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/06.dir/Vector.cpp.o -MF CMakeFiles/06.dir/Vector.cpp.o.d -o CMakeFiles/06.dir/Vector.cpp.o -c "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/Vector.cpp"

CMakeFiles/06.dir/Vector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/06.dir/Vector.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/Vector.cpp" > CMakeFiles/06.dir/Vector.cpp.i

CMakeFiles/06.dir/Vector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/06.dir/Vector.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/Vector.cpp" -o CMakeFiles/06.dir/Vector.cpp.s

CMakeFiles/06.dir/Scene.cpp.o: CMakeFiles/06.dir/flags.make
CMakeFiles/06.dir/Scene.cpp.o: ../Scene.cpp
CMakeFiles/06.dir/Scene.cpp.o: CMakeFiles/06.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/06.dir/Scene.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/06.dir/Scene.cpp.o -MF CMakeFiles/06.dir/Scene.cpp.o.d -o CMakeFiles/06.dir/Scene.cpp.o -c "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/Scene.cpp"

CMakeFiles/06.dir/Scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/06.dir/Scene.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/Scene.cpp" > CMakeFiles/06.dir/Scene.cpp.i

CMakeFiles/06.dir/Scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/06.dir/Scene.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/Scene.cpp" -o CMakeFiles/06.dir/Scene.cpp.s

CMakeFiles/06.dir/BVH.cpp.o: CMakeFiles/06.dir/flags.make
CMakeFiles/06.dir/BVH.cpp.o: ../BVH.cpp
CMakeFiles/06.dir/BVH.cpp.o: CMakeFiles/06.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/06.dir/BVH.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/06.dir/BVH.cpp.o -MF CMakeFiles/06.dir/BVH.cpp.o.d -o CMakeFiles/06.dir/BVH.cpp.o -c "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/BVH.cpp"

CMakeFiles/06.dir/BVH.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/06.dir/BVH.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/BVH.cpp" > CMakeFiles/06.dir/BVH.cpp.i

CMakeFiles/06.dir/BVH.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/06.dir/BVH.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/BVH.cpp" -o CMakeFiles/06.dir/BVH.cpp.s

CMakeFiles/06.dir/Renderer.cpp.o: CMakeFiles/06.dir/flags.make
CMakeFiles/06.dir/Renderer.cpp.o: ../Renderer.cpp
CMakeFiles/06.dir/Renderer.cpp.o: CMakeFiles/06.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/06.dir/Renderer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/06.dir/Renderer.cpp.o -MF CMakeFiles/06.dir/Renderer.cpp.o.d -o CMakeFiles/06.dir/Renderer.cpp.o -c "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/Renderer.cpp"

CMakeFiles/06.dir/Renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/06.dir/Renderer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/Renderer.cpp" > CMakeFiles/06.dir/Renderer.cpp.i

CMakeFiles/06.dir/Renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/06.dir/Renderer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/Renderer.cpp" -o CMakeFiles/06.dir/Renderer.cpp.s

# Object files for target 06
06_OBJECTS = \
"CMakeFiles/06.dir/main.cpp.o" \
"CMakeFiles/06.dir/Vector.cpp.o" \
"CMakeFiles/06.dir/Scene.cpp.o" \
"CMakeFiles/06.dir/BVH.cpp.o" \
"CMakeFiles/06.dir/Renderer.cpp.o"

# External object files for target 06
06_EXTERNAL_OBJECTS =

06: CMakeFiles/06.dir/main.cpp.o
06: CMakeFiles/06.dir/Vector.cpp.o
06: CMakeFiles/06.dir/Scene.cpp.o
06: CMakeFiles/06.dir/BVH.cpp.o
06: CMakeFiles/06.dir/Renderer.cpp.o
06: CMakeFiles/06.dir/build.make
06: CMakeFiles/06.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable 06"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/06.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/06.dir/build: 06
.PHONY : CMakeFiles/06.dir/build

CMakeFiles/06.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/06.dir/cmake_clean.cmake
.PHONY : CMakeFiles/06.dir/clean

CMakeFiles/06.dir/depend:
	cd "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06" "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06" "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/build" "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/build" "/home/rick/Documents/Computer Graphics/GAMES101/Homework/06/build/CMakeFiles/06.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/06.dir/depend

