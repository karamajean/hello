
hello: hello.c
	$(CC) $(CFLAGS) $(CFLAGS_EXTRA) -o '$@' '$<' $(LIBS)

clean:
	rm hello