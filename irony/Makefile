CXX=clang++
SRC=$(shell find -name '*.cpp')
CXXFLAGS=-I ~/.nix-profile/include -std=c++11 -DIRONY_PACKAGE_VERSION=\"0.2.0-cvs4\" -fpic $(shell llvm-config --cxxflags)
OBJ=$(SRC:%.cpp=%.o)
#LIBS=$(shell ls ~/.nix-profile/lib/libclang*.a)
CLANGLIBS = \
                -lclang\
                -lclangTooling\
                -lclangFrontendTool\
                -lclangFrontend\
                -lclangDriver\
                -lclangSerialization\
                -lclangCodeGen\
                -lclangParse\
                -lclangSema\
                -lclangStaticAnalyzerFrontend\
                -lclangStaticAnalyzerCheckers\
                -lclangStaticAnalyzerCore\
                -lclangAnalysis\
                -lclangARCMigrate\
                -lclangEdit\
                -lclangAST\
                -lclangLex\
                -lclangBasic\

LIBS=$(shell llvm-config --libs) $(CLANGLIBS)

LDFLAGS=$(shell llvm-config --ldflags)

irony_server: $(OBJ)
	$(CXX)  $^ -o $@ $(CXXFLAGS) $(LDFLAGS) $(LIBS)

clean:
	rm -f irony_server
	find -name '*.o' | xargs rm
