%consult('~manuelsantos/resto/um/sbc20192020/opp_euclides.pl').
% declara��o de operadores
:-op(800,xfx,--->). %
:-op(600,fx,~). % nega��o
:-dynamic(numero/1).
% execu��o do meta-interpretador via: ?- demo.
% executa os m�dulos OPP at� encontrar stop
demo:- Condicao ---> Accao,
testa(Condicao),
executa(Accao).
testa([]).
testa([~Primeira|Resto]):- % negac�o de condi��o
!,nao(Primeira),testa(Resto).
testa([Primeira|Resto]):- 
!,call(Primeira),testa(Resto).

nao(Condicao):-call(Condicao),!,fail.
nao(_).
executa([stop]):-!. % p�ra se stop
executa([]):- demo. % continua com pr�ximo OPP
executa([Primeira|Resto])
:-call(Primeira), executa(Resto).
% predicados de manipulacao da BD
substitui(A,B):- retract(A),!,asserta(B).
insere(A):- asserta(A).
retira(A):- retract(A).

numero(63).
numero(45).

[numero(X),numero(Y),X>Y]--->[D is X-Y,substitui(numero(X),numero(D))].
[numero(X)]--->[write(X),stop].