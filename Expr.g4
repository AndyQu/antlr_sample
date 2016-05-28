grammar Expr;		
prog:	(expr NEWLINE)* ;
expr:	expr ('*'|'/') expr
    |	expr ('+'|'-') expr
    |   func_call
    |	INT
    |	'(' expr ')'
    ;
func_call : Name'(' (Name)? (',' Name)+ ')' ;
NEWLINE : [\r\n]+ ;
INT     : [0-9]+ ;
Name    : [a-z]+ ;
