CC = gcc
CFLAGS = -Iinclude -Wall

SRC = src/main.c
OBJ = obj/mystrfunctions.o obj/myfilefunctions.o
LIB = lib/libmyutils.a
TARGET = bin/client_static

# Default rule
all: $(TARGET)

# Step 1: Build the static library
$(LIB): obj/mystrfunctions.o obj/myfilefunctions.o
	ar rcs $(LIB) obj/mystrfunctions.o obj/myfilefunctions.o

# Step 2: Build the object files
obj/mystrfunctions.o: src/mystrfunctions.c
	$(CC) $(CFLAGS) -c src/mystrfunctions.c -o obj/mystrfunctions.o

obj/myfilefunctions.o: src/myfilefunctions.c
	$(CC) $(CFLAGS) -c src/myfilefunctions.c -o obj/myfilefunctions.o

# Step 3: Link main with the static library
$(TARGET): $(SRC) $(LIB)
	$(CC) $(CFLAGS) $(SRC) -Llib -lmyutils -o $(TARGET)

clean:
	rm -f obj/*.o $(LIB) $(TARGET)

