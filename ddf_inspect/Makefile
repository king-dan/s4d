LIB=-L$(DYNAMO_HOME)/lib/darwin/ -lddf -ldlib -lrender
INC=-I$(DYNAMO_HOME)/include/ -I$(DYNAMO_HOME)/ext/include/ -I$(DYNAMO_HOME)/../../engine/

main:
	g++ -stdlib=libstdc++ -m32 main.cpp $(INC) $(LIB) -o ddf_inspect

all:
	main

clean:
	rm ddf_inspect
