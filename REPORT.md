# REPORT.md

## Feature-1: Project Scaffolding and Version Control

**Q1. What did you do in this feature?**  
- Created a new GitHub repository following the naming convention.  
- Cloned it locally and set up the required folder structure (`src/`, `include/`, `lib/`, `bin/`, `obj/`, `REPORT.md`).  
- Added and pushed the initial structure to GitHub.  

**Q2. Why is version control important?**  
- It keeps track of all changes in a project.  
- Makes it easy to collaborate, rollback, and release versions.  
- GitHub ensures remote backup and professional workflow.  

---

## Feature-2: Multi-file Project

**Q1. Explain the linking rule in this part’s Makefile: `$(TARGET): $(OBJECTS)`. How does it differ from linking with a library?**  
- This rule means the final program depends on all object files.  
- All `.c` files are compiled into `.o` files, then linked directly into the executable.  
- If linking with a library, we would instead use `-L` and `-l` flags to tell the compiler to use pre-built `.a` or `.so` files.  

**Q2. What is a git tag and why is it useful? Difference between simple and annotated tag?**  
- A **git tag** marks a specific commit (often used for releases).  
- Simple tag = lightweight pointer to a commit.  
- Annotated tag = contains metadata (message, tagger, date). Used for official releases.  

**Q3. What is the purpose of creating a "Release" on GitHub? Why attach binaries?**  
- A GitHub Release is a packaged, user-friendly version of the project.  
- Attaching binaries (like `bin/client`) allows users to run the program without compiling the source code.  

---

## Feature-3: Creating and Using Static Library

**Q1. Compare Makefile Part 2 vs Part 3.**  
- Part 2: Directly compiled all `.c` files into the final executable.  
- Part 3: First built a `.a` static library from utility functions, then linked `main.c` against that library.  

**Q2. Purpose of `ar` and `ranlib`.**  
- `ar`: Combines multiple `.o` files into a `.a` static library.  
- `ranlib`: Creates an index inside the library for faster symbol lookup.  

**Q3. When running `nm` on `client_static`, are functions visible? What does this show?**  
- Functions like `mystrlen` are not visible because their code has been copied directly into the executable.  
- This shows that **static linking embeds code into the program**, making it self-contained but larger.  

---

## Feature-4: Creating and Using Dynamic Library

**Q1. What is Position-Independent Code (`-fPIC`) and why is it required?**  
- `-fPIC` generates code that does not depend on fixed memory addresses.  
- This allows shared libraries (`.so`) to be loaded anywhere in memory by the operating system.  

**Q2. Why is there a file size difference between static and dynamic executables?**  
- Static executables are larger because all library code is copied inside.  
- Dynamic executables are smaller because they load the library at runtime from the `.so` file.  

**Q3. What is `LD_LIBRARY_PATH` and why was it needed?**  
- An environment variable that tells the dynamic loader where to search for `.so` files.  
- Without setting it, the OS cannot find custom libraries (like `libmyutils.so`).  
- By adding your `lib/` folder to `LD_LIBRARY_PATH`, the program runs successfully.  

---

