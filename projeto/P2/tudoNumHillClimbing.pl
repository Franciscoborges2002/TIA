%arcos
arco(braga,porto). 
arco(braga,viseu). 
arco(porto,lisboa). 
arco(lisboa,faro). 
arco(porto,viseu). 
arco(braga,guimaraes).  
arco(guimaraes,porto). 
arco(viseu,coimbra).
arco(coimbra,braga).
arco(coimbra,lisboa).

%ao contratio
arco(porto,braga). 
arco(viseu,braga). 
arco(lisboa,porto). 
arco(faro,lisboa). 
arco(viseu,porto). 
arco(guimaraes,braga).  
arco(porto,guimaraes). 
arco(coimbra,viseu).
arco(braga,coimbra).
arco(lisboa,coimbra).


dist(braga,    porto,      comboio,    50,   3). 
/* dist(braga,    porto,      autocarro,  70,   14). 
dist(braga,    porto,      automovel,  40,   15).  */
dist(braga,    viseu,      automovel,  200,  90). 
dist(porto,    lisboa,     comboio,    180,  60). 
/* dist(porto,    lisboa,     automovel,  150,  90). 
dist(porto,    lisboa,     aviao,      120,  130). 
dist(porto,    lisboa,     autocarro,  150,  25). */ 
dist(lisboa,   faro,       comboio,    240,  80). 
/* dist(lisboa,   faro,       automovel,  200,  150). 
dist(lisboa,   faro,       aviao,      120,  140). 
dist(lisboa,   faro,       autocarro,  240,  70).  */
dist(porto,    viseu,      automovel,  200,  90). 
/* dist(porto,    viseu,      comboio,    260,  70). 
dist(porto,    viseu,      autocarro,  250,  60). */ 
dist(braga,    guimaraes,  automovel,  20,   10). 
/* dist(braga,    guimaraes,  autocarro,  30,   15). */ 
dist(guimaraes,porto,      automovel,  50,   14). 
/* dist(guimaraes,porto,      comboio,    70,   3). 
dist(guimaraes,porto,      autocarro,  60,   12).  */
dist(viseu,    coimbra,    automovel,  100,  40).
dist(coimbra,  braga,      automovel,  90,   60).
dist(coimbra,  lisboa,     comboio,    120,  30).

%AO CONTRARIO
dist(porto,    braga,      comboio,    50,   3). 
/* dist(porto,    braga,      autocarro,  70,   14). 
dist(porto,    braga,      automovel,  40,   15).  */
dist(viseu,    braga,      automovel,  200,  90). 
dist(lisboa,   porto,      comboio,    180,  60). 
/* dist(lisboa,   porto,      automovel,  150,  90). 
dist(lisboa,   porto,      aviao,      120,  130). 
dist(lisboa,   porto,      autocarro,  150,  25).  */
dist(faro,     lisboa,     comboio,    240,  80). 
/* dist(faro,     lisboa,     automovel,  200,  150). 
dist(faro,     lisboa,     aviao,      120,  140). 
dist(faro,     lisboa,     autocarro,  240,  70).  */
dist(viseu,    porto,      automovel,  200,  90). 
/* dist(viseu,    porto,      comboio,    260,  70). 
dist(viseu,    porto,      autocarro,  250,  60).  */
dist(guimaraes,braga,      automovel,  20,   10). 
/* dist(guimaraes,braga,      autocarro,  30,   15). */ 
dist(porto,    guimaraes,  automovel,  50,   14). 
/* dist(porto,    guimaraes,  comboio,    70,   3). 
dist(porto,    guimaraes,  autocarro,  60,   12).  */
dist(coimbra,  viseu,      automovel,  100,  40).
dist(braga,    braga,      automovel,  90,   60).
dist(lisboa,   coimbra,    comboio,    120,  30).

caminho(X,Z,C):-caminho(X,Z,[X],C).

caminho(X,X,Caminho,Caminho).

caminho(Origem,Destino,Visitado,Caminho)
:- arco(Origem,DestinoIntermedio),
/* nl,write('Origem'), write(Origem),nl,
nl,write('Destino '), write(Destino),nl,
nl,write('Visitado '), write(Visitado),nl,
nl,write('Caminho '), write(Caminho),nl, */
\+ member(DestinoIntermedio,Visitado),
/* nl,write('DestinoIntermedio '), write(DestinoIntermedio),nl, */
caminho(DestinoIntermedio,Destino,[DestinoIntermedio | Visitado],Caminho).

% assumes eval(Solution,Result)
% assumes change(S1,S2)

% return SR, the best value of S1 and S2: SR (solution) and ER (eval)
best(Prob,Opt,S1,E1,S2,E2,SR,ER):- 
    nl,write('Prob'), write(Prob),nl,
nl,write('Opt '), write(Opt),nl,
nl,write('S1 '), write(S1),nl,
nl,write('E1 '), write(E1),nl,
nl,write('S2'), write(Prob),nl,
nl,write('E2 '), write(Opt),nl,
nl,write('SR '), write(S1),nl,
nl,write('ER '), write(E1),nl,
    eval(S2,E2),
    best_opt(Prob,Opt,S1,E1,S2,E2,SR,ER).

bestopt(Prob,,,,S2,E2,S2,E2):-
    random(X), % random from 0 to 1,
    X< Prob. % accept new solution

bestopt(,Opt,S1,E1,S2,E2,SR,ER):- % else, select the best one
    ( (Opt=max,max_list([E1,E2],ER));(Opt=min,min_list([E1,E2],ER)) ),
    ( (ER==E1,SR=S1); (ER==E2,SR=S2) ).


% hill climbing
% Prob=0 is pure hill climbing, Prob>0 means Stochastic Hill Climbing
% S0 is the initial solution, Control is a list with the number of iterations, verbose in console, probability and type of optimization.
hill_climbing(S0,[Iter,Verbose,Prob,Opt],S1):-
    eval(S0,E0),
    hill_climbing(S0,E0,0,Iter,Verbose,Prob,Opt,S1).

hillclimbing(S,,Iter,Iter,,,_,S).
hillclimbing(S1,E1,I,Iter,Verbose,Prob,Opt,SFinal):-
    change(S1,SNew),
    best(Prob,Opt,S1,E1,SNew,,S2,E2),
    I1 is I+1,
    hill_climbing(S2,E2,I1,Iter,Verbose,Prob,Opt,SFinal).

%caminho(braga,porto,L).
%caminho(braga,lisboa,L).