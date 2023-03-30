:-  op( 800, fx, if).       %IF
:-  op( 700, xfx, then).    %THEN
:-  op( 300, xfy, or).      %OR
:-  op( 200, xfy, and).     %AND

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

%_________________________BASE CONHECIMENTO_________________

if oBraga and dPorto and 

%_________________________INICIO____________________________
iniciar:-write('Bem vindo e Boa sessão!'),nl,nl,perguntaOrigemDestino.

%_________________________PERGUNTAS_________________________
pergunta1():-write('Como te chamas?'), nl, nl, read(User), inf(User).

inf(User):-nl, write(User), write(', para te conseguirmos aconselhar com um meio de transporte escolhe uma opcao para cada pergunta. '), nl, pergunta2(User).


pergunta2(User):- nl, write(' Qual o seu orcamento para a viagem? '),nl, nl,
 write('"a." - Quero gastar pouco dinheiro'),nl, %%
 write('"b." - Não tenho um orçamento definido'),nl,%%
 write('"c." - Posso gastar muito, desde que seja rápido'),nl,%%
 write(' A sua opcao e : '),read(R),(
 (R == a), assert(fact(gastar_pouco)),pergunta3(User);
 (R == b), assert(fact(sem_orcamento)),pergunta3(User);
 (R == c), assert(fact(gastar_muito)),pergunta3(User)).


pergunta3(User):- nl, write('Prente que seja uma viagem mais curta ou mais longa? '),nl, nl,
 write('"a." - Mais curta seria o ideal.'),nl,
 write('"b." - Passo o tempo de viagem ocupado, portanto tanto faz.'),nl,
 write('"c." - Pretendo uma viagem rápida'),nl,
 write(' A sua opcao e : '),read(Rest),(
 (Rest == a), assert(fact(viagem_curta)),pergunta4(User);
 (Rest == b), assert(fact(sem_restricao)),pergunta4(User);
 (Rest == c), assert(fact(viagem_longa)),pergunta4(User)).

pergunta4(User):- nl, write('Escolha a sua origem: '),nl, nl,
 write('"a." - Braga.'),nl,
 write('"b." - Porto.'),nl,
 write('"c." - Lisboa.'),nl,
 write('"d." - Guimarães.'),nl,
 write('"e." - Viseu.'),nl,
 write('"f." - Coimbra.'),nl,
 write(' A sua opcao e : '),read(Rest),(
 (Rest == a), assert(fact(braga)),pergunta5(User);
 (Rest == b), assert(fact(porto)),pergunta5(User);
 (Rest == c), assert(fact(lisboa)),pergunta5(User);
 (Rest == d), assert(fact(guimaraes)),pergunta5(User);
 (Rest == e), assert(fact(viseu)),pergunta5(User);
 (Rest == c), assert(fact(coimbra)),pergunta5(User)).

pergunta5(User):- nl, write('Escolha o seu destino: '),nl, nl,
 write('"a." - Braga.'),nl,
 write('"b." - Porto.'),nl,
 write('"c." - Lisboa.'),nl,
 write('"d." - Guimarães.'),nl,
 write('"e." - Viseu.'),nl,
 write('"f." - Coimbra.'),nl,
 write(' A sua opcao e : '),read(Rest),(
 (Rest == a), assert(fact(braga)),pergunta6(User);
 (Rest == b), assert(fact(porto)),pergunta6(User);
 (Rest == c), assert(fact(lisboa)),pergunta6(User);
 (Rest == d), assert(fact(guimaraes)),pergunta6(User);
 (Rest == e), assert(fact(viseu)),pergunta6(User);
 (Rest == c), assert(fact(coimbra)),pergunta6(User)).