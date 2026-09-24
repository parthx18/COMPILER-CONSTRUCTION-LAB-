# exp10_279 — For Loop Syntax Validator (Lex & Yacc)

Validates the syntax of a C-style `for` loop using Lex and Yacc.

## Files
- `exp10_279.l` — Lex file (tokenizer)
- `exp10_279.y` — Yacc file (grammar rules)


## Build & Run

```bash
yacc -d exp10_279.y
lex exp10_279.l
gcc y.tab.c lex.yy.c -o exp10_279 -ll
./exp10_279
```

## Sample Output

```
Enter a for loop:
for(i=0; i<10; i++)
Valid for loop
```

```
Enter a for loop:
for(i=0 i<10; i++)
Invalid for loop
```
