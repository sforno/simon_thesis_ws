# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/simoneforno/simon_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/simoneforno/simon_ws/build

# Utility rule file for clean_test_results_voxel_grid.

# Include the progress variables for this target.
include navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/progress.make

navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid:
	cd /home/simoneforno/simon_ws/build/navigation/voxel_grid && /usr/bin/python /opt/ros/kinetic/share/catkin/cmake/test/remove_test_results.py /home/simoneforno/simon_ws/build/test_results/voxel_grid

clean_test_results_voxel_grid: navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid
clean_test_results_voxel_grid: navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/build.make

.PHONY : clean_test_results_voxel_grid

# Rule to build all files generated by this target.
navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/build: clean_test_results_voxel_grid

.PHONY : navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/build

navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/clean:
	cd /home/simoneforno/simon_ws/build/navigation/voxel_grid && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_voxel_grid.dir/cmake_clean.cmake
.PHONY : navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/clean

navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/depend:
	cd /home/simoneforno/simon_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/simoneforno/simon_ws/src /home/simoneforno/simon_ws/src/navigation/voxel_grid /home/simoneforno/simon_ws/build /home/simoneforno/simon_ws/build/navigation/voxel_grid /home/simoneforno/simon_ws/build/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/depend

