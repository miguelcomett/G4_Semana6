# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build

# Include any dependencies generated for this target.
include CMakeFiles/xrayTube.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/xrayTube.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/xrayTube.dir/flags.make

CMakeFiles/xrayTube.dir/main.cc.o: CMakeFiles/xrayTube.dir/flags.make
CMakeFiles/xrayTube.dir/main.cc.o: ../main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/xrayTube.dir/main.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xrayTube.dir/main.cc.o -c /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/main.cc

CMakeFiles/xrayTube.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xrayTube.dir/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/main.cc > CMakeFiles/xrayTube.dir/main.cc.i

CMakeFiles/xrayTube.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xrayTube.dir/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/main.cc -o CMakeFiles/xrayTube.dir/main.cc.s

CMakeFiles/xrayTube.dir/src/ActionInitialization.cc.o: CMakeFiles/xrayTube.dir/flags.make
CMakeFiles/xrayTube.dir/src/ActionInitialization.cc.o: ../src/ActionInitialization.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/xrayTube.dir/src/ActionInitialization.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xrayTube.dir/src/ActionInitialization.cc.o -c /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/ActionInitialization.cc

CMakeFiles/xrayTube.dir/src/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xrayTube.dir/src/ActionInitialization.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/ActionInitialization.cc > CMakeFiles/xrayTube.dir/src/ActionInitialization.cc.i

CMakeFiles/xrayTube.dir/src/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xrayTube.dir/src/ActionInitialization.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/ActionInitialization.cc -o CMakeFiles/xrayTube.dir/src/ActionInitialization.cc.s

CMakeFiles/xrayTube.dir/src/DetectorConstruction.cc.o: CMakeFiles/xrayTube.dir/flags.make
CMakeFiles/xrayTube.dir/src/DetectorConstruction.cc.o: ../src/DetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/xrayTube.dir/src/DetectorConstruction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xrayTube.dir/src/DetectorConstruction.cc.o -c /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/DetectorConstruction.cc

CMakeFiles/xrayTube.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xrayTube.dir/src/DetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/DetectorConstruction.cc > CMakeFiles/xrayTube.dir/src/DetectorConstruction.cc.i

CMakeFiles/xrayTube.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xrayTube.dir/src/DetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/DetectorConstruction.cc -o CMakeFiles/xrayTube.dir/src/DetectorConstruction.cc.s

CMakeFiles/xrayTube.dir/src/DetectorMessenger.cc.o: CMakeFiles/xrayTube.dir/flags.make
CMakeFiles/xrayTube.dir/src/DetectorMessenger.cc.o: ../src/DetectorMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/xrayTube.dir/src/DetectorMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xrayTube.dir/src/DetectorMessenger.cc.o -c /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/DetectorMessenger.cc

CMakeFiles/xrayTube.dir/src/DetectorMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xrayTube.dir/src/DetectorMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/DetectorMessenger.cc > CMakeFiles/xrayTube.dir/src/DetectorMessenger.cc.i

CMakeFiles/xrayTube.dir/src/DetectorMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xrayTube.dir/src/DetectorMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/DetectorMessenger.cc -o CMakeFiles/xrayTube.dir/src/DetectorMessenger.cc.s

CMakeFiles/xrayTube.dir/src/EventAction.cc.o: CMakeFiles/xrayTube.dir/flags.make
CMakeFiles/xrayTube.dir/src/EventAction.cc.o: ../src/EventAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/xrayTube.dir/src/EventAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xrayTube.dir/src/EventAction.cc.o -c /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/EventAction.cc

CMakeFiles/xrayTube.dir/src/EventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xrayTube.dir/src/EventAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/EventAction.cc > CMakeFiles/xrayTube.dir/src/EventAction.cc.i

CMakeFiles/xrayTube.dir/src/EventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xrayTube.dir/src/EventAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/EventAction.cc -o CMakeFiles/xrayTube.dir/src/EventAction.cc.s

CMakeFiles/xrayTube.dir/src/PhysicsList.cc.o: CMakeFiles/xrayTube.dir/flags.make
CMakeFiles/xrayTube.dir/src/PhysicsList.cc.o: ../src/PhysicsList.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/xrayTube.dir/src/PhysicsList.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xrayTube.dir/src/PhysicsList.cc.o -c /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/PhysicsList.cc

CMakeFiles/xrayTube.dir/src/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xrayTube.dir/src/PhysicsList.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/PhysicsList.cc > CMakeFiles/xrayTube.dir/src/PhysicsList.cc.i

CMakeFiles/xrayTube.dir/src/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xrayTube.dir/src/PhysicsList.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/PhysicsList.cc -o CMakeFiles/xrayTube.dir/src/PhysicsList.cc.s

CMakeFiles/xrayTube.dir/src/PhysicsListMessenger.cc.o: CMakeFiles/xrayTube.dir/flags.make
CMakeFiles/xrayTube.dir/src/PhysicsListMessenger.cc.o: ../src/PhysicsListMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/xrayTube.dir/src/PhysicsListMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xrayTube.dir/src/PhysicsListMessenger.cc.o -c /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/PhysicsListMessenger.cc

CMakeFiles/xrayTube.dir/src/PhysicsListMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xrayTube.dir/src/PhysicsListMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/PhysicsListMessenger.cc > CMakeFiles/xrayTube.dir/src/PhysicsListMessenger.cc.i

CMakeFiles/xrayTube.dir/src/PhysicsListMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xrayTube.dir/src/PhysicsListMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/PhysicsListMessenger.cc -o CMakeFiles/xrayTube.dir/src/PhysicsListMessenger.cc.s

CMakeFiles/xrayTube.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/xrayTube.dir/flags.make
CMakeFiles/xrayTube.dir/src/PrimaryGeneratorAction.cc.o: ../src/PrimaryGeneratorAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/xrayTube.dir/src/PrimaryGeneratorAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xrayTube.dir/src/PrimaryGeneratorAction.cc.o -c /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/PrimaryGeneratorAction.cc

CMakeFiles/xrayTube.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xrayTube.dir/src/PrimaryGeneratorAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/PrimaryGeneratorAction.cc > CMakeFiles/xrayTube.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/xrayTube.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xrayTube.dir/src/PrimaryGeneratorAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/PrimaryGeneratorAction.cc -o CMakeFiles/xrayTube.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/xrayTube.dir/src/RunAction.cc.o: CMakeFiles/xrayTube.dir/flags.make
CMakeFiles/xrayTube.dir/src/RunAction.cc.o: ../src/RunAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/xrayTube.dir/src/RunAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xrayTube.dir/src/RunAction.cc.o -c /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/RunAction.cc

CMakeFiles/xrayTube.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xrayTube.dir/src/RunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/RunAction.cc > CMakeFiles/xrayTube.dir/src/RunAction.cc.i

CMakeFiles/xrayTube.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xrayTube.dir/src/RunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/RunAction.cc -o CMakeFiles/xrayTube.dir/src/RunAction.cc.s

CMakeFiles/xrayTube.dir/src/SensitiveDetector.cc.o: CMakeFiles/xrayTube.dir/flags.make
CMakeFiles/xrayTube.dir/src/SensitiveDetector.cc.o: ../src/SensitiveDetector.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/xrayTube.dir/src/SensitiveDetector.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xrayTube.dir/src/SensitiveDetector.cc.o -c /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/SensitiveDetector.cc

CMakeFiles/xrayTube.dir/src/SensitiveDetector.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xrayTube.dir/src/SensitiveDetector.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/SensitiveDetector.cc > CMakeFiles/xrayTube.dir/src/SensitiveDetector.cc.i

CMakeFiles/xrayTube.dir/src/SensitiveDetector.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xrayTube.dir/src/SensitiveDetector.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/SensitiveDetector.cc -o CMakeFiles/xrayTube.dir/src/SensitiveDetector.cc.s

CMakeFiles/xrayTube.dir/src/SensitiveDetectorHit.cc.o: CMakeFiles/xrayTube.dir/flags.make
CMakeFiles/xrayTube.dir/src/SensitiveDetectorHit.cc.o: ../src/SensitiveDetectorHit.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/xrayTube.dir/src/SensitiveDetectorHit.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xrayTube.dir/src/SensitiveDetectorHit.cc.o -c /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/SensitiveDetectorHit.cc

CMakeFiles/xrayTube.dir/src/SensitiveDetectorHit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xrayTube.dir/src/SensitiveDetectorHit.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/SensitiveDetectorHit.cc > CMakeFiles/xrayTube.dir/src/SensitiveDetectorHit.cc.i

CMakeFiles/xrayTube.dir/src/SensitiveDetectorHit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xrayTube.dir/src/SensitiveDetectorHit.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/src/SensitiveDetectorHit.cc -o CMakeFiles/xrayTube.dir/src/SensitiveDetectorHit.cc.s

# Object files for target xrayTube
xrayTube_OBJECTS = \
"CMakeFiles/xrayTube.dir/main.cc.o" \
"CMakeFiles/xrayTube.dir/src/ActionInitialization.cc.o" \
"CMakeFiles/xrayTube.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/xrayTube.dir/src/DetectorMessenger.cc.o" \
"CMakeFiles/xrayTube.dir/src/EventAction.cc.o" \
"CMakeFiles/xrayTube.dir/src/PhysicsList.cc.o" \
"CMakeFiles/xrayTube.dir/src/PhysicsListMessenger.cc.o" \
"CMakeFiles/xrayTube.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/xrayTube.dir/src/RunAction.cc.o" \
"CMakeFiles/xrayTube.dir/src/SensitiveDetector.cc.o" \
"CMakeFiles/xrayTube.dir/src/SensitiveDetectorHit.cc.o"

# External object files for target xrayTube
xrayTube_EXTERNAL_OBJECTS =

xrayTube: CMakeFiles/xrayTube.dir/main.cc.o
xrayTube: CMakeFiles/xrayTube.dir/src/ActionInitialization.cc.o
xrayTube: CMakeFiles/xrayTube.dir/src/DetectorConstruction.cc.o
xrayTube: CMakeFiles/xrayTube.dir/src/DetectorMessenger.cc.o
xrayTube: CMakeFiles/xrayTube.dir/src/EventAction.cc.o
xrayTube: CMakeFiles/xrayTube.dir/src/PhysicsList.cc.o
xrayTube: CMakeFiles/xrayTube.dir/src/PhysicsListMessenger.cc.o
xrayTube: CMakeFiles/xrayTube.dir/src/PrimaryGeneratorAction.cc.o
xrayTube: CMakeFiles/xrayTube.dir/src/RunAction.cc.o
xrayTube: CMakeFiles/xrayTube.dir/src/SensitiveDetector.cc.o
xrayTube: CMakeFiles/xrayTube.dir/src/SensitiveDetectorHit.cc.o
xrayTube: CMakeFiles/xrayTube.dir/build.make
xrayTube: /usr/local/lib/libG4Tree.so
xrayTube: /usr/local/lib/libG4FR.so
xrayTube: /usr/local/lib/libG4GMocren.so
xrayTube: /usr/local/lib/libG4visHepRep.so
xrayTube: /usr/local/lib/libG4RayTracer.so
xrayTube: /usr/local/lib/libG4VRML.so
xrayTube: /usr/local/lib/libG4ToolsSG.so
xrayTube: /usr/local/lib/libG4OpenGL.so
xrayTube: /usr/local/lib/libG4vis_management.so
xrayTube: /usr/local/lib/libG4modeling.so
xrayTube: /usr/local/lib/libG4interfaces.so
xrayTube: /usr/local/lib/libG4mctruth.so
xrayTube: /usr/local/lib/libG4geomtext.so
xrayTube: /usr/local/lib/libG4error_propagation.so
xrayTube: /usr/local/lib/libG4readout.so
xrayTube: /usr/local/lib/libG4physicslists.so
xrayTube: /usr/local/lib/libG4run.so
xrayTube: /usr/local/lib/libG4event.so
xrayTube: /usr/local/lib/libG4tracking.so
xrayTube: /usr/local/lib/libG4parmodels.so
xrayTube: /usr/local/lib/libG4processes.so
xrayTube: /usr/local/lib/libG4digits_hits.so
xrayTube: /usr/local/lib/libG4track.so
xrayTube: /usr/local/lib/libG4particles.so
xrayTube: /usr/local/lib/libG4geometry.so
xrayTube: /usr/local/lib/libG4materials.so
xrayTube: /usr/local/lib/libG4graphics_reps.so
xrayTube: /usr/lib/x86_64-linux-gnu/libGL.so
xrayTube: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.12.8
xrayTube: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
xrayTube: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
xrayTube: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
xrayTube: /usr/lib/x86_64-linux-gnu/libXmu.so
xrayTube: /usr/lib/x86_64-linux-gnu/libXext.so
xrayTube: /usr/lib/x86_64-linux-gnu/libXt.so
xrayTube: /usr/lib/x86_64-linux-gnu/libICE.so
xrayTube: /usr/lib/x86_64-linux-gnu/libSM.so
xrayTube: /usr/lib/x86_64-linux-gnu/libX11.so
xrayTube: /usr/local/lib/libG4analysis.so
xrayTube: /usr/lib/x86_64-linux-gnu/libexpat.so
xrayTube: /usr/local/lib/libG4zlib.so
xrayTube: /usr/local/lib/libG4intercoms.so
xrayTube: /usr/local/lib/libG4global.so
xrayTube: /usr/local/lib/libG4clhep.so
xrayTube: /usr/local/lib/libG4ptl.so.2.3.3
xrayTube: CMakeFiles/xrayTube.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable xrayTube"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xrayTube.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/xrayTube.dir/build: xrayTube

.PHONY : CMakeFiles/xrayTube.dir/build

CMakeFiles/xrayTube.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/xrayTube.dir/cmake_clean.cmake
.PHONY : CMakeFiles/xrayTube.dir/clean

CMakeFiles/xrayTube.dir/depend:
	cd /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build /home/alosnamon/G4_IFI-Team_2024-RealTube/G4XRTube_vf/build/CMakeFiles/xrayTube.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/xrayTube.dir/depend

