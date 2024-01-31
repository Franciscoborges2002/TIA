% PROJETO 2 - 
% CAMINHO ENTRE CIDADES, PROCURAR O CAMINHO MAIS CURTO E MAIS BARATO ENTRE TODOS OS POSSÍVEIS PARA IR DE UM SÍTIO AO OUTRO%

% Tabela do enunciado
arco(braga, porto). 
arco(braga, viseu). 
arco(porto, lisboa).  
arco(lisboa, faro). 
arco(porto, viseu). 
arco(braga, guimaraes). 
arco(guimaraes, porto). 
arco(viseu, coimbra).
arco(coimbra, braga).
arco(coimbra, lisboa).

% Distâncias
dist(braga, porto, comboio, 50, 3). 
dist(braga, porto, autocarro, 70, 14). 
dist(braga, porto, automovel, 40, 15). 
dist(braga, viseu, automovel, 200, 90). 
dist(porto, lisboa, comboio, 180, 60). 
dist(porto, lisboa, automovel, 150, 90). 
dist(porto, lisboa, aviao, 120, 130). 
dist(porto, lisboa, autocarro, 150, 25). 
dist(lisboa, faro, comboio, 240, 80). 
dist(lisboa, faro, automovel, 200, 150). 
dist(lisboa, faro, aviao, 120, 140). 
dist(lisboa, faro, autocarro, 240, 70). 
dist(porto, viseu, automovel, 200, 90). 
dist(porto, viseu, comboio, 260, 70). 
dist(porto, viseu, autocarro, 250, 60). 
dist(braga, guimaraes, automovel, 20, 10). 
dist(braga, guimaraes, autocarro, 30, 15). 
dist(guimaraes, porto, automovel, 50, 14). 
dist(guimaraes, porto, comboio, 70, 3). 
dist(guimaraes, porto, autocarro, 60, 12). 
dist(viseu, coimbra, automovel, 100, 40).
dist(coimbra, braga, automovel, 90, 60).
dist(coimbra, lisboa, comboio, 120, 30).

caminhocurto(X, Y, C) :-
    findall(Caminho, caminho(X, Y, Caminho), Caminhos),
    maiscurto(X, Y, Caminhos, C).

maiscurto(X, Y, [Caminho1,Caminho2|Caminhos], CaminhoMaisCurto) :-
    dist(Caminho1, Dist1, _),
    dist(Caminho2, Dist2, _),
    Dist1 =< Dist2,
    maiscurto(X, Y, [Caminho1|Caminhos], CaminhoMaisCurto).
maiscurto(X, Y, [Caminho1,Caminho2|Caminhos], CaminhoMaisCurto) :-
    dist(Caminho1, Dist1, _),
    dist(Caminho2, Dist2, _),
    Dist1 > Dist2,
    maiscurto(X, Y, [Caminho2|Caminhos], CaminhoMaisCurto).

caminho(X, Z, Caminho) :- caminho(X, Z, [X], Caminho). 
caminho(X, X, Caminho, Caminho).
caminho(X, Z, Visitado, Caminho) :-
    arco(X, Y),
    \+ member(Y, Visitado),
    caminho(Y, Z, [Y | Visitado], Caminho).

dist([_], 0, 0).
dist([A,B|C], Distancia, Tempo) :-
    dist(B, A, T, Dist1, Temp1),
    dist([B|C], Dist2, Temp2),
    Distancia is Dist1 + Dist2,
    Tempo is Temp1 + Temp2.

caminho_mais_curto_e_tempo(CidadeOrigem, CidadeDestino, CaminhoMaisCurto, TempoTotal) :-
    findall([Caminho, Tempo], (caminhocurto(CidadeOrigem, CidadeDestino, Caminho), dist(Caminho, Tempo)), Caminhos),
    menor_tempo(Caminhos, CaminhoMaisCurto, TempoTotal).

menor_tempo([CaminhoTempo], CaminhoTempo, _).
menor_tempo([CaminhoTempo1, CaminhoTempo2 | Resto], CaminhoMaisCurto, TempoTotal) :-
    CaminhoTempo1 = [Caminho1, Tempo1],
    CaminhoTempo2 = [Caminho2, Tempo2],
    (Tempo1 < Tempo2 ->
        menor_tempo([CaminhoTempo1 | Resto], CaminhoMaisCurto, TempoTotal)
    ;
        menor_tempo([CaminhoTempo2 | Resto], CaminhoMaisCurto, TempoTotal)
    ).
