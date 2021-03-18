CC = cc

SRC = kmeanCPM.c

BIN = par.o

CFLAGS = -fopenmp



all : 
	@$(CC) -O3 $(SRC) $(CFLAGS) -o $(BIN)

clean : 
	@rm -rf $(BIN)

run : 
	@./$(BIN)