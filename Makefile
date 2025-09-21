CC = gcc
CFLAGS = -Iinclude -Wall
SRC = src/main.c
OBJ = obj/mystrfunctions.o obj/myfilefunctions.o

# Libraries
STATIC_LIB = lib/libmyutils.a
DYNAMIC_LIB = lib/libmyutils.so

# Executables
STATIC_TARGET = bin/client_static
DYNAMIC_TARGET = bin/client_dynamic

all: $(STATIC_TARGET) $(DYNAMIC_TARGET)

# --- Build static library ---
$(STATIC_LIB): obj/mystrfunctions.o obj/myfilefunctions.o
	ar rcs $(STATIC_LIB) $^

# --- Build dynamic library ---
$(DYNAMIC_LIB): obj/mystrfunctions.o obj/myfilefunctions.o
	$(CC) -shared -o $(DYNAMIC_LIB) $^

# --- Build object files with -fPIC (for dynamic) ---
obj/mystrfunctions.o: src/mystrfunctions.c
	$(CC) $(CFLAGS) -fPIC -c $< -o $@

obj/myfilefunctions.o: src/myfilefunctions.c
	$(CC) $(CFLAGS) -fPIC -c $< -o $@

# --- Link static executable ---
$(STATIC_TARGET): $(SRC) $(STATIC_LIB)
	$(CC) $(CFLAGS) $(SRC) -Llib -lmyutils -o $@

# --- Link dynamic executable ---
$(DYNAMIC_TARGET): $(SRC) $(DYNAMIC_LIB)
	$(CC) $(CFLAGS) $(SRC) -Llib -lmyutils -o $@

clean:
	rm -f obj/*.o lib/*.a lib/*.so bin/*

install: $(STATIC_TARGET) $(DYNAMIC_TARGET)
	# Copy executables to /usr/local/bin
	sudo cp bin/client_static /usr/local/bin/client
	sudo cp bin/client_dynamic /usr/local/bin/client_dynamic

	# Copy man page to system man directory
	sudo cp man/man3/client.1 /usr/share/man/man1/
	sudo gzip /usr/share/man/man1/client.1

