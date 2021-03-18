CC = cc
SRC = kmeanCPM.c
BIN = par
CFLAGS = -fopenmp
RESULT = result
MKDIR_P = mkdir -p



all : $(SRC)
	@$(CC) -O3 $(SRC) $(CFLAGS) -o $(BIN).out

clean : 
	@rm -rf $(BIN).out
	@rm -rf $(RESULT)/*

run : all $(RESULT)
	@./$(BIN).out > result/$(BIN).txt

time : all $(RESULT)
	time -p ./$(BIN).out > result/$(BIN).txt

$(RESULT):
	@$(MKDIR_P) $(RESULT)