CC = cc

SRC = kmeanCPM.c

BIN = par

CFLAGS = -fopenmp

RESULT = result



all : 
	@$(CC) -O3 $(SRC) $(CFLAGS) -o $(BIN).o

clean : 
	@rm -rf $(BIN).o

run : 
	@./$(BIN).o > result/$(BIN).txt