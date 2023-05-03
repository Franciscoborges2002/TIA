%consult('~manuelsantos/resto/um/sbc20192020/opp_euclides.pl').
% declaração de operadores
:-op(800,xfx,--->). %
:-op(600,fx,~). % negação
:-dynamic(numero/1).
% execução do meta-interpretador via: ?- demo.
% executa os módulos OPP até encontrar stop
demo:- Condicao ---> Accao,
testa(Condicao),
executa(Accao).
testa([]).
testa([~Primeira|Resto]):- % negacão de condição
!,nao(Primeira),testa(Resto).
testa([Primeira|Resto]):- 
!,call(Primeira),testa(Resto).

nao(Condicao):-call(Condicao),!,fail.
nao(_).
executa([stop]):-!. % pára se stop
executa([]):- demo. % continua com próximo OPP
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