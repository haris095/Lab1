CFLAGS = -Wall -g -std=c++17
DEFINES = -DFMT_HEADER_ONLY
INCLUDE_PATH = -I /public/devel/2020/vcpkg/installed/x64-linux/include
OBJECTS=fmt.o 

fmt : $(OBJECTS)
	g++  $(OBJECTS) -o fmt

fmt.o : fmt.cpp
	g++ -c $(CFLAGS) $(INCLUDE_PATH) $(DEFINES) fmt.cpp

clean :
	rm -f *.o fmt