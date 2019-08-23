CROSS?=himix200

ifeq ($(CROSS), himix200)
    CXX = arm-himix200-linux-g++
    CXXFLAGS= -mcpu=cortex-a7 -mfloat-abi=softfp -mfpu=neon-vfpv4 -fno-aggressive-loop-optimizations -std=c++11 -fPIC
    INSTALL_PATH=../himix200_build/install
endif

CPP_SOURCES=$(wildcard *.cpp)
CPP_PROGS=$(patsubst %.cpp, %.o, $(CPP_SOURCES))

TARGET=example_$(CROSS)


CTHRIDPART= -I. -I${INSTALL_PATH}/include -L${INSTALL_PATH}/lib -lrestbed

.PHONY:clean

all: $(TARGET)

$(TARGET): $(CPP_PROGS)
	$(CXX) -o $@ $^ ${CXXFLAGS} ${CTHRIDPART}

$(CPP_PROGS): %.o:%.cpp
	$(CXX) -o $@ -c $< ${CXXFLAGS} ${CTHRIDPART}

clean:
	rm -rf $(TARGET) $(CPP_PROGS) 



