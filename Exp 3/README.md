# Experiment 3 — Word matcher (starts with a/A)

## Terminal session
```
lab-03-34@lab-03-34-OptiPlex-3280-AIO:~$ vim Exp3_1279.l
lab-03-34@lab-03-34-OptiPlex-3280-AIO:~$ vim Exp3_1279.l
lab-03-34@lab-03-34-OptiPlex-3280-AIO:~$ lex Exp3_1279.l
lab-03-34@lab-03-34-OptiPlex-3280-AIO:~$ cc lex.yy.c -ll
lab-03-34@lab-03-34-OptiPlex-3280-AIO:~$ ./a.out
Enter input (Press Ctrl+D to stop):
An apple and a banana are on a table.
Matched      : An
Matched      : apple
Matched      : and
Matched      : a
Not Matched : banana
Matched      : are
Not Matched : on
Matched      : a
Not Matched : table

------ Result ------
Total Matched     = 6
Total Not Matched = 3
lab-03-34@lab-03-34-OptiPlex-3280-AIO:~$
```
