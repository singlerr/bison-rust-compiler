%{
 int yylex(void);
 void yyerror(char const*);
%}


%token KW_AS
%token KW_BREAK
%token KW_CONST
%token KW_CONTINUE
%token KW_CRATE
%token KW_ELSE
%token KW_ENUM
%token KW_EXTERN
%token KW_FALSE
%token KW_FN
%token KW_FOR
%token KW_IF
%token KW_IMPL
%token KW_IN
%token KW_LET
%token KW_LOOP
%token KW_MATCH
%token KW_MOD
%token KW_MOVE
%token KW_MUT
%token KW_PUB
%token KW_REF
%token KW_RETURN
%token KW_SELFVALUE
%token KW_SELFTYPE
%token KW_STATIC
%token KW_STRUCT
%token KW_SUPER
%token KW_TRAIT
%token KW_TRUE
%token KW_TYPE
%token KW_UNSAFE
%token KW_USE
%token KW_WHERE
%token KW_WHILE

%token PLUS
%token MINUS
%token STAR
%token SLASH
%token PERCENT
%token CARET
%token NOT
%token AND
%token OR
%token ANDAND
%token OROR
%token SHL
%token SHR
%token PLUSEQ
%token MINUSEQ
%token STAREQ
%token SLASHEQ
%token PERCENTEQ
%token CARETEQ
%token ANDEQ
%token OREQ
%token SHLEQ
%token SHREQ
%token EQ
%token EQEQ
%token NE
%token GT
%token LT
%token GE
%token LE
%token AT
%token UNDERSCORE
%token DOT
%token DOTDOT
%token DOTDOTDOT
%token DOTDOTEQ
%token COMMA
%token SEMI
%token COLON
%token PATHSEP
%token RARROW
%token FATARROW
%token LARROW
%token POUND
%token DOLLAR
%token QUESTION
%token TILDE
%token LCURLYBRACE
%token RCURLYBRACE
%token LBRACKET
%token RBRACKET
%token LPAREN
%token RPAREN

%token KW_MACRO_RULES
%token KW_UNION
%token KW_STATICLIFETIME

%token IDENTIFIER
%token KEYWORD

%token SUFFIX
%token SUFFIX_NO_E

%token CHAR_LITERAL
%token QUOTE_ESCAPE
%token ASCII_ESCAPE
%token UNICODE_ESCAPE

%token STRING_LITERAL
%token STRING_CONTINUE

%token RAW_STRING_LITERAL
%token RAW_STRING_CONTENT

%token BYTE_LITERAL
%token ASCII_FOR_CHAR
%token BYTE_ESCAPE

%%
// Grammar Rules

Item:
    OuterAttribute
     VisItem
    | MacroItem
VisItem:
    Visibility
    (
      Module
      | ExternCrate
      | UseDeclaration
      | Function
      | TypeAlias
      | Struct


%%


