
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     OPEN_CURLY_BRACKET = 258,
     CLOSED_CURLY_BRACKET = 259,
     OPEN_ROUND_BRACKET = 260,
     CLOSED_ROUND_BRACKET = 261,
     OPEN_SQUARE_BRACKET = 262,
     CLOSED_SQUARE_BRACKET = 263,
     COMMA = 264,
     SEMICOLON = 265,
     COLON = 266,
     READ_SYMBOL = 267,
     WRITE_SYMBOL = 268,
     PLUS = 269,
     MINUS = 270,
     MULTIPLICATION = 271,
     DIVISION = 272,
     ASSIGNMENT = 273,
     MODULO = 274,
     GREATER_THAN = 275,
     GREATER_OR_EQUAL = 276,
     LOWER_THAN = 277,
     LOWER_OR_EQUAL = 278,
     EQUAL = 279,
     NOT_EQUAL = 280,
     AND = 281,
     IF = 282,
     FOR = 283,
     ELSE = 284,
     READ = 285,
     WRITE = 286,
     WHILE = 287,
     IN = 288,
     RANGE = 289,
     INTEGER = 290,
     STRING = 291,
     CHAR = 292,
     MAIN = 293,
     IDENTIFIER = 294,
     CONSTANT = 295
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


