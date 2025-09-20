# Compiler
CC = gcc

# Final program name
TARGET = bin/client

# Step 1: Build everything
all: $(TARGET)

# Step 2: Link all source files into final program
$(TARGET):
	$(CC) -Iinclude -Wall src/main.c src/mystrfunctions.c src/myfilefunctions.c -o $(TARGET)

# Step 3: Clean build files
clean:
	rm -f $(TARGET)

