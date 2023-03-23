:-dynamic(aluno/2).
programa:-write('Introduza o seu nome:'),read(X),
    		nl, write('introduza o curso: '), read(Y),
            assertz(aluno(X,Y)).

aluno(joao,legsi).
aluno(antonio, legsi).
aluno(joana,legsi).