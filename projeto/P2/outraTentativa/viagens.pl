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

dist(porto,varzim,36.99).
dist(porto,famalicao,35.8).
dist(porto,barcelos,59.61).
dist(porto,braga,55.74).
dist(porto,viana,75.48).
dist(porto,valenca,114.88).
dist(varzim,famalicao,31.39).
dist(varzim,barcelos,21.34).
dist(varzim,braga,38.88).
dist(varzim,viana,41.44).
dist(varzim,valenca,85.35).
dist(famalicao,barcelos,21.45).
dist(famalicao,braga,24.76).
dist(famalicao,viana,69.89).
dist(famalicao,valenca,83.91).
dist(barcelos,braga,25.79).
dist(barcelos,viana,39.42).
dist(barcelos,valenca,68.48).
dist(braga,viana,62.46).
dist(braga,valenca,67.19).
dist(viana,valenca,52.26).


travel(X,Y,D):-dist(Y,X,D);dist(X,Y,D). % true if dist or symmetrical
% representation: S is a list of cities
% (first and last cities need to be the same)
% evaluation function: (sum of distances for all pairs)
eval([_],0).
eval([City1,City2|R],DS):-
travel(City1,City2,D),
eval([City2|R],DR),
DS is D+DR.


% change: switch 2 adjacent cities at random position:
change(S1,S2):-
length(S1,L),
random_between(1,L,P1),
 change(S1,P1,L,S2).
% change travelling path, auxiliary function:

change(S1,P1,L,S2):- % general case, normal switch
P1>2, P1<L, % normal switch
nth1(P1,S1,City1),
P2 is P1-1,
nth1(P2,S1,City2),
replace_list(S1,P1,City2,S11),
replace_list(S11,P2,City1,S2).
change(S1,1,L,S2):- % P1 is 1


P2 is L-1, % last non repeated city
 nth1(1,S1,City1),
nth1(P2,S1,City2),
replace_list(S1,1,City2,S11),
replace_list(S11,P2,City1,S12),
replace_list(S12,L,City2,S2). % last


change(S1,2,L,S2):- % P1 is 2
P2 is 1, % first element
 nth1(2,S1,City1),
nth1(P2,S1,City2),
replace_list(S1,2,City2,S11),
replace_list(S11,P2,City1,S12),
replace_list(S12,L,City1,S2). % last


change(S1,L,L,S2):- % P1 is L
P2 is L-1, % last non repeated city
 nth1(L,S1,City1),
nth1(P2,S1,City2),
replace_list(S1,L,City2,S11),
replace_list(S11,P2,City1,S12),
replace_list(S12,1,City2,S2). % last


% initial solution: lets start with a bad solution:
initial([porto,viana,famalicao,valenca,varzim,braga,barcelos,porto]).
:- set_random(seed(12345)). % set initial random seed


% S is the solution
q1:- % standard hill climbing
initial(S0), % initial solution
% 10000 iterations, report every 2000 iterations
time(hill_climbing(S0,[10000,2000,0,min],S)),
eval(S,Dist),
 write('sol:'),write(S),nl,write('dist:'),write(Dist),nl.


q2:- % stochastic hill climbing Prob=0.2
initial(S0), % initial solution
% 10000 iterations, report every 2000 iterations
time(hill_climbing(S0,[10000,2000,0.2,min],S)),
eval(S,Dist),
 write('sol:'),write(S),nl,write('dist:'),write(Dist),nl.