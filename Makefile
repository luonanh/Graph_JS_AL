CC=gcc
CFLAGS=-g -Wall -std=c99
OBJS=main.o graph_adj_mat.o
BIN=main
SUBMITNAME=project.zip

all:$(BIN)

$(BIN):$(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) -r $(BIN) *.o *.dSYM $(SUBMITNAME)

submit:
	$(RM) $(SUBMITNAME)
	zip $(SUBMITNAME) $(BIN)
