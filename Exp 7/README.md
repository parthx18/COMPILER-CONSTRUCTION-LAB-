# Experiment 7 — Ends-with-"com" checker

## Terminal session
```
sit-lab2-pc30@sit-lab2-pc30-OptiPlex-3280-AIO:~$ vim exp7_1279.l
sit-lab2-pc30@sit-lab2-pc30-OptiPlex-3280-AIO:~$ lex exp7_1279.l
sit-lab2-pc30@sit-lab2-pc30-OptiPlex-3280-AIO:~$ cc lex.yy.c -ll
sit-lab2-pc30@sit-lab2-pc30-OptiPlex-3280-AIO:~$ ./a.out
Enter lines (Ctrl+D to stop):
hello.com
ENDS WITH com: hello.com
hello.org
DOES NOT END WITH com: hello.org
google.com
ENDS WITH com: google.com
test.net
DOES NOT END WITH com: test.net
```
