# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.29

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "S:\CLion 2024.2.3\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "S:\CLion 2024.2.3\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\CS Projects\FPGA-Edge-Detection"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\CS Projects\FPGA-Edge-Detection\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/SteamTable_Thermodynamics_APP.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SteamTable_Thermodynamics_APP.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SteamTable_Thermodynamics_APP.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SteamTable_Thermodynamics_APP.dir/flags.make

CMakeFiles/SteamTable_Thermodynamics_APP.dir/c++Algo/Main.cpp.obj: CMakeFiles/SteamTable_Thermodynamics_APP.dir/flags.make
CMakeFiles/SteamTable_Thermodynamics_APP.dir/c++Algo/Main.cpp.obj: CMakeFiles/SteamTable_Thermodynamics_APP.dir/includes_CXX.rsp
CMakeFiles/SteamTable_Thermodynamics_APP.dir/c++Algo/Main.cpp.obj: D:/CS\ Projects/FPGA-Edge-Detection/c++Algo/Main.cpp
CMakeFiles/SteamTable_Thermodynamics_APP.dir/c++Algo/Main.cpp.obj: CMakeFiles/SteamTable_Thermodynamics_APP.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="D:\CS Projects\FPGA-Edge-Detection\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SteamTable_Thermodynamics_APP.dir/c++Algo/Main.cpp.obj"
	"S:\CLion 2024.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SteamTable_Thermodynamics_APP.dir/c++Algo/Main.cpp.obj -MF CMakeFiles\SteamTable_Thermodynamics_APP.dir\c++Algo\Main.cpp.obj.d -o CMakeFiles\SteamTable_Thermodynamics_APP.dir\c++Algo\Main.cpp.obj -c "D:\CS Projects\FPGA-Edge-Detection\c++Algo\Main.cpp"

CMakeFiles/SteamTable_Thermodynamics_APP.dir/c++Algo/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SteamTable_Thermodynamics_APP.dir/c++Algo/Main.cpp.i"
	"S:\CLion 2024.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\CS Projects\FPGA-Edge-Detection\c++Algo\Main.cpp" > CMakeFiles\SteamTable_Thermodynamics_APP.dir\c++Algo\Main.cpp.i

CMakeFiles/SteamTable_Thermodynamics_APP.dir/c++Algo/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SteamTable_Thermodynamics_APP.dir/c++Algo/Main.cpp.s"
	"S:\CLion 2024.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\CS Projects\FPGA-Edge-Detection\c++Algo\Main.cpp" -o CMakeFiles\SteamTable_Thermodynamics_APP.dir\c++Algo\Main.cpp.s

# Object files for target SteamTable_Thermodynamics_APP
SteamTable_Thermodynamics_APP_OBJECTS = \
"CMakeFiles/SteamTable_Thermodynamics_APP.dir/c++Algo/Main.cpp.obj"

# External object files for target SteamTable_Thermodynamics_APP
SteamTable_Thermodynamics_APP_EXTERNAL_OBJECTS =

SteamTable_Thermodynamics_APP.exe: CMakeFiles/SteamTable_Thermodynamics_APP.dir/c++Algo/Main.cpp.obj
SteamTable_Thermodynamics_APP.exe: CMakeFiles/SteamTable_Thermodynamics_APP.dir/build.make
SteamTable_Thermodynamics_APP.exe: CMakeFiles/SteamTable_Thermodynamics_APP.dir/linkLibs.rsp
SteamTable_Thermodynamics_APP.exe: CMakeFiles/SteamTable_Thermodynamics_APP.dir/objects1.rsp
SteamTable_Thermodynamics_APP.exe: CMakeFiles/SteamTable_Thermodynamics_APP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="D:\CS Projects\FPGA-Edge-Detection\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SteamTable_Thermodynamics_APP.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\SteamTable_Thermodynamics_APP.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SteamTable_Thermodynamics_APP.dir/build: SteamTable_Thermodynamics_APP.exe
.PHONY : CMakeFiles/SteamTable_Thermodynamics_APP.dir/build

CMakeFiles/SteamTable_Thermodynamics_APP.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\SteamTable_Thermodynamics_APP.dir\cmake_clean.cmake
.PHONY : CMakeFiles/SteamTable_Thermodynamics_APP.dir/clean

CMakeFiles/SteamTable_Thermodynamics_APP.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\CS Projects\FPGA-Edge-Detection" "D:\CS Projects\FPGA-Edge-Detection" "D:\CS Projects\FPGA-Edge-Detection\cmake-build-debug" "D:\CS Projects\FPGA-Edge-Detection\cmake-build-debug" "D:\CS Projects\FPGA-Edge-Detection\cmake-build-debug\CMakeFiles\SteamTable_Thermodynamics_APP.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/SteamTable_Thermodynamics_APP.dir/depend

