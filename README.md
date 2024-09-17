Compiler Lab Programs
This repository contains several programs developed for a Compiler Lab course. Each folder focuses on different components of lexical analysis and parsing in compilers, utilizing tools like FLEX and BISON.

Directory Overview
Control Statements
This folder contains a program to recognize and validate control structure syntax in C, such as:

for loops
while loops
if-else statements
switch-case constructs
Simple Calculator
A basic calculator program that evaluates arithmetic expressions. The program supports operations like addition, subtraction, multiplication, and division. It is built using lexical analysis and parsing techniques to process the input.

Simple Expression Evaluation
This program evaluates simple arithmetic expressions. It takes an expression as input and outputs the result after parsing and calculating the expression.

Tokenization of Given C Code
This program tokenizes a given C code, identifying components such as:

Keywords
Identifiers
Constants
Operators
The program uses lexical analysis to break the code into tokens and categorize them.
Valid Variable
This folder contains a program to recognize valid variable names according to C language rules. The variable names should start with a letter and can be followed by letters, digits, or underscores.

How to Run
Install FLEX and BISON (if not already installed)

bash
Copy code
sudo apt-get install flex bison
Compile and run each program:

For FLEX programs:

bash
Copy code
flex <filename>.l
gcc lex.yy.c -o output
./output
For BISON programs:

bash
Copy code
bison -d <filename>.y
flex <filename>.l
gcc lex.yy.c <filename>.tab.c -o output
./output
