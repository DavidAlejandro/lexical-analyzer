package analizador;
import static analizador.Token.*;
%%

%class Lexer
%type Token
%ignorecase
%unicode
%column
%line

L = [a-zA-Z_]
D = [0-9]
WHITE=[ \t\r\n]
%{
public String lexeme;
%}
%%
{WHITE} {/*Ignore*/}
"return" {return RETURN;}
">=" {return GREATEROREQUALTHAN;}
"<=" {return LESSOREQUALTHAN;}
"and" {return AND;}
"or" {return OR;}
"xor" {return XOR;}
"=/=" {return NOTEQUAL;}
"==" {return EQUALS;}
"=" {return ASSIGN;}
"+" {return SUMA;}
"*" {return MULT;}
"-" {return RESTA;}
"/" {return DIV;}
">" {return GREATERTHAN;}
"<" {return LESSTHAN;}
"if" {return IF;}
"then" {return THEN;}
"else" {return ELSE;}
"elseif" {return ELSEIF;}
"endif" {return ENDIF;}
"char" {return CHAR;}
"bool" {return BOOL;}
"for" {return FOR;}
"endfor" {return ENDFOR;}
"while" {return WHILE;}
"endfhile" {return ENDWHILE;}
"select" {return SELECT;}
"endselect" {return ENDSELECT;}
"option" {return OPTION;}
"endoption" {return ENDOPTION;}
"default" {return DEFAULT;}
"enddefault" {return ENDDEFAULT;}
";" {return LTERMINATOR;}
"//" {return SCOMMENT;}
"/*" {return MCOMMENT;}
"*/" {return ENDMCOMMENT;}
{L}({L}|{D})* {lexeme=yytext(); return ID;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return INT;}

. {return ERROR;}