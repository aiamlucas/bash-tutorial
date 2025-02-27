# Basics of Shell

## Variables

$name="John"
echo "Hello $name"
echo "Hello ${name}"
echo "Hello $name!"
echo "Hello ${name}!"

$lastname="Andrade"
echo "Hello $name $lastname"

## Grep command

$grep "hello" words.txt

// Recursive search
grep -r "hello" . // Search in all files in the current directory

## Find command

$find . -name "hello.txt" // Find file in the current directory

## Permissions

- r: read
- w: write
- e: execute

rwx: all Permissions
rw-: read and write, but not execute
r-x: read and execute, but not write

// If a permission is missing it will be replaced by a dash (-) Ex: r-x

#### Files

-rwxrwxrwx  
A file where everyone (owner, group, others) can read, write, and execute.

-rwxr-xr-x  
A file where the owner has full permissions (read, write, execute), while the group and others can only read and execute.

-rw-rw-rw-  
A file where everyone can read and write, but no one can execute it.

-rw-r--r--  
A file where the owner can read and write, and the group and others can only read it.

-rwx------  
A file where only the owner has full permissions (read, write, execute), with no permissions for group or others.

-rw-------  
A file where only the owner can read and write it, with no execute permission.

#### Directories

drwxrwxrwx  
A directory where everyone can list, modify, and enter it.

drwxr-xr-x  
A directory where the owner has full permissions (read, write, execute), and the group and others can read and enter it.

drwx------  
A directory where only the owner has full access (read, write, execute); the group and others have no access.

drwxr-x---  
A directory where the owner can do everything, the group can read and enter, and others have no access.

dr-xr-xr-x  
A directory where everyone can list and enter it, but no one (including the owner) can modify its contents.

#### Notes

- The **first character** indicates the type:
  - `-` for a file
  - `d` for a directory.
- The **next three characters** are permissions for the owner.
- The **following three** are for the group.
- The **final three** are for others.
- For directories, the `x` permission is required to access (enter) the directory.
- Missing permissions are shown as a dash (`-`).

### Changing Permissions

You can modify file and directory permissions with the `chmod` command. There are two primary methods:

1. **Symbolic Mode:**  
   Use letters to add, remove, or set permissions. For example:

```
chmod u=rwx,g=rx,o=rx file.txt
```

This command sets the owner (`u`) to have read, write, and execute permissions, while the group (`g`) and others (`o`) get read and execute permissions.

2. **Numeric (Octal) Mode:**  
   Permissions are represented as numbers:

   - 4 = read
   - 2 = write
   - 1 = execute

   By summing these values, you get the permission for each group:

   - `7` (4+2+1): read, write, and execute
   - `5` (4+0+1): read and execute
   - `6` (4+2+0): read and write

   For example:

```
chmod 755 file.txt
```

This sets:

- Owner: 7 (rwx)
- Group: 5 (r-x)
- Others: 5 (r-x)

### Notes...

```
chmod -x genids.sh // Remove execute permissions
```

```
chmod +x genids.sh // Add execute permissions
```

---

# Compiled Programs vs Interpreted Programs

## Compiled Programs

- **Languages:** Commonly written in languages such as C, C++, or Rust.
- **Compilation Process:**  
  The source code is transformed by a compiler into machine code. This machine code is specific to the target CPU architecture.
- **Execution:**  
  The resulting binary is executed directly by the CPU without the need for an intermediary program.
- **Performance:**  
  Compiled programs are generally faster since the code is optimized during compilation and runs directly on the hardware.
- **Portability:**  
  Binaries are platform-specific. Code must be recompiled for different architectures.

## Interpreted Programs

- **Languages:** Often written in languages like Python, Ruby, or JavaScript.
- **Interpretation Process:**  
  The source code is executed by an interpreter that reads and runs the code line by line.
- **Execution:**  
  No standalone binary is created; the interpreter handles execution at runtime.
- **Performance:**  
  Interpreted programs are typically slower because the code is processed on the fly and may lack the same level of hardware-specific optimization.
- **Portability:**  
  The same source code can run on any platform with a compatible interpreter, making it more flexible for cross-platform development.

---

# Redirecting Streams

## Standard Streams

- You can redirect stdout and stderr to a file using the `>` and `2>` operators, respectively.

```
echo "Hello, World!" > output.txt
# Hello, World! will be written to output.txt
```

```
ls /nonexistent 2> error.txt
# The error message will be written to error.txt
```
