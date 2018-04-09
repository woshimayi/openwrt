all: hello

hello: hello.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f hello
