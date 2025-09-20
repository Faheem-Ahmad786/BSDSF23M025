# REPORT.md

## Feature-2: Multi-file Project

**Q1. Explain the linking rule in this part's Makefile:**  
The rule `$(TARGET): $(OBJECTS)` means the final program depends on all object files.  
If we were linking with a library, we would use `-L` and `-l` flags instead.  

**Q2. What is a git tag and why is it useful?**  
A tag marks an important commit (like a version).  
A simple tag is just a pointer, while an annotated tag has extra info like a message and author.  

**Q3. Purpose of GitHub release and attaching binaries?**  
A release is a packaged version for users.  
Attaching binaries lets users run the program without compiling.

---

## Feature-3: Creating and Using Static Library

**Q1. Compare Makefile Part 2 vs Part 3**  
- Part 2: Directly compiled all `.c` files.  
- Part 3: First created a `.a` library, then linked `main.c` with it.  

**Q2. Purpose of `ar` and `ranlib`**  
- `ar`: bundles `.o` files into one `.a` archive (static library).  
- `ranlib`: indexes the library for faster symbol lookup.  

**Q3. When running `nm` on client_static, are functions visible?**  
No, because they are copied into the executable.  
This shows static linking embeds library code directly into the program.

