%_________________________ INTERFACE _____________________________________
:-dynamic(fact/1). % definir fact como dinamico
:-[backward, forward, bd, baseconhecimento].

iniciar:-retractall(fact(_)),write('Bem vindo e Boa sessão!'),nl,nl,perguntaNome().

%_________________________ PERGUNTAS ____________________________
%
perguntaNome():-write('Como te chamas?'), nl, nl, read(User), inf(User).

inf(User):-nl, write(User), write(', para te conseguirmos aconselhar com um meio de transporte escolhe uma opcao para cada pergunta. '), nl, perguntaOrigem(User).

/*
*
*PERGUNTA ORIGEM
*
*/
perguntaOrigem(User):- nl, write('Escolha a sua origem: '),nl, nl,
 write('"a." - Braga.'),nl,
 write('"b." - Porto.'),nl,
 write('"c." - Lisboa.'),nl,
 write('"d." - Guimarães.'),nl,
 write('"e." - Viseu.'),nl,
 write('"f." - Coimbra.'),nl,
 write('"g." - Faro.'),nl,
 write(' A sua opcao e : '),read(Origem),(
 (Origem == a), assert(fact(origem_braga)),perguntaDestino(User);
 (Origem == b), assert(fact(origem_porto)),perguntaDestino(User);
 (Origem == c), assert(fact(origem_lisboa)),perguntaDestino(User);
 (Origem == d), assert(fact(origem_guimaraes)),perguntaDestino(User);
 (Origem == e), assert(fact(origem_viseu)),perguntaDestino(User);
 (Origem == f), assert(fact(origem_coimbra)),perguntaDestino(User);
 (Origem == g), assert(fact(origem_faro)),perguntaDestino(User)).

/*
*
*PERGUNTA DESTINO
*
*/
perguntaDestino(User):- nl, write('Escolha o seu destino: '),nl, nl,
 write('"a." - Braga.'),nl,
 write('"b." - Porto.'),nl,
 write('"c." - Lisboa.'),nl,
 write('"d." - Guimarães.'),nl,
 write('"e." - Viseu.'),nl,
 write('"f." - Coimbra.'),nl,
 write('"g." - Faro.'),nl,
 write(' A sua opcao e : '),read(Destino),(
 (Destino == a), assert(fact(destino_braga)),perguntaPreco(User);
 (Destino == b), assert(fact(destino_porto)),perguntaPreco(User);
 (Destino == c), assert(fact(destino_lisboa)),perguntaPreco(User);
 (Destino == d), assert(fact(destino_guimaraes)),perguntaPreco(User);
 (Destino == e), assert(fact(destino_viseu)),perguntaPreco(User);
 (Destino == f), assert(fact(destino_coimbra)),perguntaPreco(User);
 (Destino == g), assert(fact(destino_faro)),perguntaPreco(User)).

/*
*
*PERGUNTA PRECO
*
*/
perguntaPreco(User):- nl, write(' Qual o seu orcamento para a viagem? '),nl, nl,
 write('"a." - Quero gastar pouco dinheiro ()'),nl,
 write('"b." - Não tenho um orçamento definido ()'),nl,
 write('"c." - Posso gastar muito, não me preocupa ()'),nl,
 write(' A sua opcao e : '),read(Orcamento),(
 (Orcamento == a), assert(fact(gastar_pouco)),perguntaTempo(User);
 (Orcamento == b), assert(fact(sem_orcamento)),perguntaTempo(User);
 (Orcamento == c), assert(fact(gastar_muito)),perguntaTempo(User)).


/*
*
*PERGUNTA TEMPO
*
*/
perguntaTempo(User):- nl, write('Prente que seja uma viagem mais curta ou mais longa? '),nl, nl,
 write('"a." - Mais curta seria o ideal.'),nl,
 write('"b." - Passo o tempo de viagem ocupado, portanto tanto faz.'),nl,
 write('"c." - Pretendo uma viagem rápida'),nl,
 write(' A sua opcao e : '),read(Duracao),(
 (Duracao == a), assert(fact(viagem_curta)),perguntaCasaBanho(User);
 (Duracao == b), assert(fact(sem_restricao)),perguntaCasaBanho(User);
 (Duracao == c), assert(fact(viagem_longa)),perguntaCasaBanho(User)).

/*
*
*PERGUNTA CASA BANHO
*
*/
perguntaCasaBanho(User):- nl, write('Ira necessitar de uma casa de banho a seu dispor?'),nl, nl,
 write('"a." - Sim'),nl,
 write('"b." - Nao'),nl, nl,
 write(' A sua opcao e : '),read(CasaBanho),(
 (CasaBanho == a), assert(fact(casa_de_banho)), nl, perguntaWifi1(User);
 (CasaBanho == b), assert(fact(nao_casa_de_banho)), nl, perguntaWifi1(User)).

/*
*
*PERGUNTA WIFI
*
*/
 perguntaWifi1(User):- nl, write('Gosta de ver series/filmes durante a viagem?'),nl, nl,
 write('"a." - Sim'),nl,
 write('"b." - Nao'),nl, nl,
 write(' A sua opcao e : '),read(CasaBanho),(
 (CasaBanho == a), assert(fact(casa_de_banho)), nl, perguntaFumador1(User);
 (CasaBanho == b), assert(fact(nao_casa_de_banho)), nl, perguntaFumador1(User)).

/*
*
*PERGUNTA ZONA FUMADOR
*
*/
perguntaFumador1(User):- nl, write('Gosta de ver series/filmes durante a viagem?'),nl, nl,
write('"a." - Sim'),nl,
write('"b." - Nao'),nl, nl,
write(' A sua opcao e : '),read(CasaBanho),(
(CasaBanho == a), assert(fact(casa_de_banho)), nl, final(User);
(CasaBanho == b), assert(fact(nao_casa_de_banho)), nl, final(User)).

/*
*
*PERGUNTA ECOLOGICA
*
*/
perguntaEcologica(User):- nl, write('Tem preocupacao com os gastos de CO2 na viagem?'),nl, nl,
write('"a." - Sim'),nl,
write('"b." - Nao'),nl, nl,
write(' A sua opcao e : '),read(CasaBanho),(
(CasaBanho == a), assert(fact(casa_de_banho)), nl, final(User);
(CasaBanho == b), assert(fact(nao_casa_de_banho)), nl, final(User)).