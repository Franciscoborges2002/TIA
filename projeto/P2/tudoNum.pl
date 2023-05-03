%_______________BACKWARD_______________________
%
:-  op( 800, fx, if).
:-  op( 700, xfx, then).
:-  op( 300, xfy, or).
:-  op( 200, xfy, and).

demo( Q)  :-
   fact( Q).

demo( Q)  :-
   if Condition then Q, % A relevant rule
   demo( Condition). % whose condition is true

demo( Q1 and Q2)  :-
   demo( Q1),
   demo( Q2).

demo( Q1 or Q2)  :-
   demo( Q1)
   ;
   demo( Q2).

:-dynamic(fact/1). % definir fact como dinamico
:- use_module(library(lists)).

iniciar:-retractall(fact(_)), retractall(intermedio(_)), retractall(origem(_)), retractall(destino(_)),write('Bem vindo e Boa sessão!'),nl,nl,perguntaNome().

%_________________________ PERGUNTAS ____________________________
%
perguntaNome():-write('Como te chamas?'), nl, nl, read(User), inf(User).

inf(User):-nl, write(User), write(', para te conseguirmos aconselhar com um meio de transporte escolhe uma opcao para cada pergunta. '), nl, perguntaOrigem(User).

arco(porto,famalicao). 
arco(porto,esposende). 
arco(famalicao,braga). 
arco(famalicao,barcelos). 
arco(braga,valenca). 
arco(barcelos,viana). 
arco(barcelos,braga). 
arco(barcelos,esposende). 
arco(esposende,viana). 
arco(esposende,barcelos). 
arco(valenca,viana). 

/*      origem,destino,transporte, tempo, preço*/
dist(   braga, porto,  comboio,    50,    3). 
dist(   braga, porto,  autocarro,  70,    14). 
dist(   braga, porto,  automovel,  40,    15). 
dist(   braga, viseu,  automovel,  200,   90). 
dist(   porto, lisboa, comboio,    180,   60). 
dist(   porto, lisboa, automovel,  150,   90). 
dist(   porto, lisboa, aviao,      120,   130). 
dist(   porto, lisboa, autocarro,  150,   25). 
dist(esposende,viana, 25, 60). 
dist(esposende,barcelos, 15, 30). 
dist(valenca,viana, 40, 80). 