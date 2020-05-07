BIN = x11nuklear

CFLAGS = -std=c89 -pedantic -O2

SRC = x11nuklear.c

$(BIN): $(SRC)
	$(CC) $(SRC) $(CFLAGS) -D_POSIX_C_SOURCE=200809L -o $(BIN) -lX11 -lm

clean:
	rm $(BIN)
