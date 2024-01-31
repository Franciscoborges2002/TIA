arco(braga, porto).
arco(braga, viseu).
arco(porto, lisboa).
arco(lisboa, faro).
arco(porto, viseu).
arco(braga, guimaraes).
arco(guimaraes, porto).
arco(viseu, coimbra).
arco(coimbra, braga).

dist(braga, porto, 50).
dist(braga, viseu, 100).
dist(porto, lisboa, 300).
dist(lisboa, faro, 280).
dist(porto, viseu, 130).
dist(braga, guimaraes, 20).
dist(guimaraes, porto, 40).
dist(viseu, coimbra, 120).
dist(coimbra, braga, 150).

distancia(X, Y, Dist) :- dist(X, Y, Dist).
distancia(X, Y, Dist) :- dist(Y, X, Dist).

hill_climbing(Estado, Estado, [Estado]).
hill_climbing(EstadoAtual, EstadoObjetivo, [EstadoAtual | Caminho]) :-
    findall(NovoEstado, (arco(EstadoAtual, NovoEstado), \+ member(NovoEstado, [EstadoAtual | Caminho])) , Estados),
    distancia(EstadoAtual, EstadoObjetivo, DistAtual),
    melhor_estado(Estados, EstadoObjetivo, EstadoAtual, DistAtual, EstadoProx, DistProx),
    hill_climbing(EstadoProx, EstadoObjetivo, Caminho).

melhor_estado([], _, EstadoAtual, DistAtual, EstadoAtual, DistAtual).
melhor_estado([Estado | Estados], EstadoObjetivo, EstadoAtual, DistAtual, MelhorEstado, MelhorDist) :-
    distancia(Estado, EstadoObjetivo, DistEstado),
    (DistEstado < DistAtual ->
        melhor_estado(Estados, EstadoObjetivo, Estado, DistEstado, MelhorEstado, MelhorDist)
    ;
        melhor_estado(Estados, EstadoObjetivo, EstadoAtual, DistAtual, MelhorEstado, MelhorDist)
    ).