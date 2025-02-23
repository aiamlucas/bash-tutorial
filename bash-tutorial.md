# terminal

## piping

$ ls -l /usr/bin/ | grep bash  
// with this command I can grep only the binaries from bash....

## Output redirection

> (write / overwrite)
>
> > (appends)

➜ bash-tutorial git:(main) touch bash-tutorial.md
➜ bash-tutorial git:(main) ✗ echo Hello World! > hello.txt
➜ bash-tutorial git:(main) ✗ bat hello.txt
───────┬───────────────────────────────────────────────────────────────────────────────────────────
│ File: hello.txt
───────┼───────────────────────────────────────────────────────────────────────────────────────────
1 ~ │ Hello World!
───────┴───────────────────────────────────────────────────────────────────────────────────────────
➜ bash-tutorial git:(main) ✗ echo Good day to you > hello.txt
➜ bash-tutorial git:(main) ✗ bat hello.txt
───────┬───────────────────────────────────────────────────────────────────────────────────────────
│ File: hello.txt
───────┼───────────────────────────────────────────────────────────────────────────────────────────
1 ~ │ Good day to you
───────┴───────────────────────────────────────────────────────────────────────────────────────────
➜ bash-tutorial git:(main) ✗ echo and nice to meet you! >> hello.txt
➜ bash-tutorial git:(main) ✗ bat hello.txt
───────┬───────────────────────────────────────────────────────────────────────────────────────────
│ File: hello.txt
───────┼───────────────────────────────────────────────────────────────────────────────────────────
1 ~ │ Good day to you
2 ~ │ and nice to meet you!
───────┴──────────────────────────────────────────────────────────────────────────────
