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

## Feature-5: Creating and Accessing Man Pages

**Q1. What sections must a man page include?**  
- `.TH` (title), `.SH NAME`, `.SH SYNOPSIS`, `.SH DESCRIPTION`, `.SH AUTHOR`.  

**Q2. What is the purpose of the install target?**  
- It installs your program and documentation in system-wide directories (`/usr/local/bin` and `/usr/share/man`).  
- This simulates real-world software installation.  

**Q3. How do you verify installation?**  
- Run `client` from any directory.  
- Run `man client` to confirm the man page works.  

---

## Feature-6: Packaging and Distribution

**Q1. Why do we create a tarball?**  
- To package the project into a single compressed file for easy sharing, backup, and distribution.  

**Q2. What should a tarball include?**  
- Source files (`src/`), headers (`include/`), libraries (`lib/`), object files (`obj/`), executables (`bin/`), man pages (`man/`), `Makefile`, and `REPORT.md`.  

**Q3. How do users build the project from the tarball?**  
- Extract it with `tar -xzvf project.tar.gz`.  
- Run `make` to build executables.  
- Run `make install` (if provided) to install system-wide.  

---

## Viva-Voce and Final Submission

**Final Deliverables:**  
- All six features implemented successfully:  
  1. Project scaffolding & version control  
  2. Multi-file build  
  3. Static library  
  4. Dynamic library  
  5. Man pages & install target  
  6. Packaging & distribution  

- GitHub repository contains:  
  - Source code, headers, libraries, executables  
  - Makefile with all required targets  
  - Man pages  
  - Final tarball  

- Final release published with version tag `v1.0.0-final`.  

**Viva-Voce Preparation Questions:**  
1. Difference between `git commit` and `git push`?  
2. Why do we use branches in a project?  
3. Explain static vs dynamic linking.  
4. What do `-Iinclude`, `-Llib`, and `-lmyutils` mean in gcc?  
5. Why is `-fPIC` necessary for shared libraries?  
6. Difference between `.a` and `.so` files?  
7. Standard sections of a man page?  
8. Purpose of the `dist` target in Makefile?  
9. How can a user build and install your project from the tarball?  

---

