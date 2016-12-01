#object_files (main.o)
OBJECTS := $(wildcard *.o)

#root_stuff (root libraries and needed root options)
ROOTLIBS := $(shell root-config --glibs)
ROOTFLAGS := $(shell root-config --cflags)

#exe_files
EXECUTABLES := main.exe main2.exe main3.exe

#compiling options
DEBUGFLAGS := -O0 -pg -Wall
CXXFLAGS := $(DEBUGFLAGS) 

#header files
LIBS := class.h class2.h


all: $(EXECUTABLES)

main.exe: main.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LIBS) $(ROOTLIBS) $(ROOTFLAGS)
main2.exe: main2.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LIBS) $(ROOTLIBS) $(ROOTFLAGS)
main3.exe: main3.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LIBS) $(ROOTLIBS) $(ROOTFLAGS)


#cleaning options
.PHONY: clean cleanall
clean:
  rm -f $(OBJECTS)
cleanall:
  rm -f $(OBJECTS) && rm -f $(EXECUTABLES)
