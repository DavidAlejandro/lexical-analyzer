/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package analizador;

/**
 *
 * @author Carlos
 */
public enum Token {
    ID, INT, SUMA, RESTA, DIV, MULT, ASSIGN, ERROR,IF,THEN,ELSE,BOOL,DOUBLE,CHAR,
    EQUALS, ELSEIF,CAST, ENDCAST, FOR, ENDFOR, WHILE, ENDWHILE, SELECT, ENDSELECT, OPTION, ENDOPTION, DEFAULT, ENDDEFAULT,   
    LTERMINATOR, SCOMMENT, MCOMMENT, ENDMCOMMENT, RPAR, LPAR, SUMMON, ENDSUMMON
    }
