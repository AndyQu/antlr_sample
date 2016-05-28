grammar Expr;		
prog:	(expr NEWLINE)* ;
expr:	expr ('*'|'/') expr
    |	expr ('+'|'-') expr
    |   func_call_a
    |   func_call_b
    |	INT
    |	'(' expr ')'
    ;
/**
func_call_a, func_call_b都以Name开始，因此当expr读到的第一个token是Name的时候，它无法确定调用func_call_a或func_call_b。
这种情况下，只能继续读后面的token，直到明确调用哪一个rule。
*/
func_call_a : Name'('  ')' ;
func_call_b : Name'(' (Name)+ ')' ;
NEWLINE : [\r\n]+ ;
INT     : [0-9]+ ;
Name    : [a-z]+ ;
