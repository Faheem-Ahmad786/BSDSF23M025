Q1. Explain the linking rule in this part’s Makefile:

$(TARGET): $(OBJECTS)

This rule means: the final program (TARGET) depends on all the object files (OBJECTS).

The compiler links all object files into one executable.

If we were linking against a library, we would write something like:

$(CC) -o $(TARGET) $(OBJECTS) -Llib -lmyutils


which tells the compiler to use a pre-built library instead of individual object files.

Q2. What is a git tag and why is it useful? Difference between simple and annotated tag?

A git tag marks a specific commit as important (like a version).

It’s useful for marking releases so you can always return to that exact version.

Simple tag = just a pointer to a commit.

Annotated tag = has extra information (message, tagger, date). It’s preferred for software releases.

Q3. What is the purpose of creating a "Release" on GitHub? Why attach binaries?

A GitHub Release is a packaged version of your code for distribution.

Attaching binaries (like bin/client) means users can run your program without compiling.

It makes your project more professional and user-friendly.

✅ Deliverables for Task-5:

Tag v0.1.1-multifile pushed to GitHub

GitHub Release with title + description + binary

Answers written in REPORT.md
