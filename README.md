# BSDSF23M025 - Operating Systems Assignment 01

This repository contains the complete implementation of **Assignment 01** for Operating Systems, covering project scaffolding, multi-file compilation, static and dynamic libraries, man pages, and packaging.

---

## 📌 Features Implemented

### ✅ Feature-1: Project Scaffolding and Version Control
- Created GitHub repository with proper naming convention.  
- Added directory structure: `src/`, `include/`, `lib/`, `bin/`, `obj/`, `man/`.  
- Initialized version control with Git, committed, and pushed to GitHub.  

### ✅ Feature-2: Multi-file Project
- Created multiple source (`.c`) and header (`.h`) files.  
- Wrote a **Makefile** to compile and link all files into one executable (`bin/client`).  
- Tagged and released version `v0.1.1-multifile`.  

### ✅ Feature-3: Static Library
- Compiled utility functions into object files (`.o`).  
- Archived them into a static library (`lib/libmyutils.a`) using `ar`.  
- Linked the main program with this static library → executable `bin/client_static`.  
- Tagged and released version `v0.2.1-static`.  

### ✅ Feature-4: Dynamic Library
- Built a shared library (`lib/libmyutils.so`) with `-fPIC` and `-shared`.  
- Linked program against `.so` → executable `bin/client_dynamic`.  
- Used `LD_LIBRARY_PATH` to run dynamically.  
- Tagged and released version `v0.3.1-dynamic`.  

### ✅ Feature-5: Man Pages
- Created man page (`man/man3/client.1`) for the client program.  
- Added **install target** in Makefile to copy executables to `/usr/local/bin` and man page to `/usr/share/man/man1/`.  
- Verified with `client` and `man client`.  
- Tagged and released version `v0.4.1-final`.  

### ✅ Feature-6: Packaging and Distribution
- Added **dist target** in Makefile.  
- Packaged the whole project into `BSDSF23M025-OS-A01.tar.gz`.  
- Verified extraction, build, and execution from tarball.  
- Tagged and released version `v1.0.0-final`.  

---

## 📂 Project Structure

