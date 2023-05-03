% inicial estado([a,b,c],[],[])
% final estado([],[],[c,b,a])

% Movimentos a partir da posição 1
% 1 para 2
arco(estado([X|Y],[],Z),estado(Y,[X],Z)).
arco(estado([X|Y],K,Z),estado(Y,[X|K],Z)).
% 1 para 3
arco(estado([X|Y],K,[]),estado(Y,K,[X])).
arco(estado([X|Y],K,Z),estado(Y,K,[X|Z])).


% Movimentos a partir da posição 2
% 2 para 1
arco(estado([],[X|Y],Z),estado([X],Y,Z)).
arco(estado(K,[X|Y],Z),estado([X|K],Y,Z)).
% 2 para 3
arco(estado(K,[X|Y],[]),estado(K,Y,[X])).
arco(estado(K,[X|Y],Z),estado(K,Y,[X|Z])).

% Movimentos a partir da posição 3
% 3 para 1
arco(estado([],Z,[X|Y]),estado([X],Z,Y)).
arco(estado(K,Z,[X|Y]),estado([X|K],Z,Y)).
% 3 para 2
arco(estado(K,[],[X|Y]),estado(K,[X],Y)).
arco(estado(K,Z,[X|Y]),estado(K,[X|Z],Y)).


caminho(X,Z,C):-caminho(X,Z,[X],C).
caminho(X,X,Caminho,Caminho).
caminho(X,Z,Visitado,Caminho)
:- arco(X,Y),
\+ member(Y,Visitado),
caminho(Y,Z,[Y | Visitado],Caminho).