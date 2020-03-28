+ 在macOS下编译时，  
    ```zsh
    gcc main.c lex.yy.c -lfl -o scanner
    ```
    改成
    ```zsh
    gcc main.c lex.yy.c -ll -o scanner
    ```
+ compiler scanner
    ```zsh
    flex lexical.l
    gcc main.c lex.yy.c -ll -o scanner
    ./scanner ../Test/test1.cmm  
    ```
+ 