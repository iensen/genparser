genparser
=========

The project is an implementation of a generic parser that takes a lexicon file, a grammar file 
and an input file and produces an abstract syntax tree.

To start using the project, download the zip archive:
https://github.com/iensen/genparser/archive/master.zip

CONTENTS
================
-docs/main/ - specification

-src/astgen/ - implementation consisting of several python modules

-.gitignore - list of files ignores by 

-README.md - this readme file

PREREQUISITES
=============
- Python version 3.2 or higher 
 
INSTALL
=======
Unzip the archive and go to the folder src/astgen/

--------------------------------------------------------------------------------
EXECUTE
=======

The command line syntax is:

python astgen.py path_to_lexicon_file path_to_grammar_file path_to_input_file [-s] [-n]

Lexicon file should contain declaration of lexem types, one per line, as defined in section 2.1 of https://github.com/iensen/genparser/blob/master/docs/main/astgen.pdf?raw=true

Grammar file should contain grammar rules, one per line, as defined in section 2.2 of https://github.com/iensen/genparser/blob/master/docs/main/astgen.pdf?raw=true

Input file is an ASCII file as defined in section 3.3 of 
https://github.com/iensen/genparser/blob/master/docs/main/astgen.pdf?raw=true

An optional argument -s tells the parser not to skip spaces (by default, all the lexems with type 'spaces' are removed from the sequence before parsing phase).

An optional argument -n tells the lexer not to add built-in lexems (by default, lexems num, id and spaces are added to the lexicon).

EXAMPLES
=======

The examples of lexicon, grammar and input files can be found in 
src/astgen/tests folder of the distribution.

The execution trace for two of them are given below: 
```prolog
:~/src/astgen$ python3 astgen.py tests/arith_expr/lexicon tests/arith_expr/grammar tests/arith_expr/input
['add', ('num', '1'), ['mult', ('num', '2'), ('num', '3')]]
```
```prolog
:~/src/astgen$ python astgen.py tests/chess/lexicon tests/chess/grammar tests/chess/input -n
['game', ['move', ('move_id', '1.'), ['pawn_move', ('cell', 'e4')], ['pawn_move', ('cell', 'e5')]], ['move', ('move_id', '2.'), ['move', ['fig', ('figure', 'Q')], ('cell', 'h5')], ['move', ['fig', ('figure', 'N')], ('cell', 'c6')]], ['move', ('move_id', '3.'), ['move', ['fig', ('figure', 'B')], ('cell', 'c4')], ['move', ['fig', ('figure', 'N')], ('cell', 'f6')]]]
```


