package analizador;
import static analizador.Token.*;
%%
%class Lexer
%type Token

L = [a-zA-Z_]
D = [0-9]
WHITE=[ \t\r\n]
%{
public String lexeme;
%}
%%
{WHITE} {/*Ignore*/}
"==" {return EQUALS;}
"=" {return ASSIGN;}
"+" {return SUMA;}
"*" {return MULT;}
"-" {return RESTA;}
"/" {return DIV;}
{L}({L}|{D})* {lexeme=yytext(); return ID;}
 ("(-"{D}+")")|{D}+ {lexeme=yytext(); return INT;}
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

. {return ERROR;}