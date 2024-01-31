% PROJETO 2 - 
% CAMINHO ENTRE CIDADES, PROCURAR O CAMINHO MAIS CURTO E MAIS BARATO ENTRE TODOS OS POSSÍVEIS PARA IR DE UM SÍTIO AO OUTRO%
% aceder ao predicado caminho(X,Y,C) 

%Podemos meter o sistema assim ou podiamos meter de outra maneira para não estarmos a mudar o sistema de inferência antigo
%arco(porto,famalicao, 30, 20). 
%arco(porto,esposende, 50, 40). 
%arco(famalicao,braga, 18, 10). 
%arco(famalicao,barcelos, 18, 10). 
%arco(braga,valenca, 70, 80). 
%arco(barcelos,viana, 20, 40). 
%arco(barcelos,braga, 18, 20). 
%arco(barcelos,esposende, 15, 20). 
%arco(esposende,viana, 25, 60). 
%arco(esposende,barcelos, 15, 30). 
%arco(valenca,viana, 40, 80). 


% OUTRA ALTERNATIVA SEM MUDAR O SISTEMA DE INFERÊNCIA ORIGINAL
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
dist(braga,    porto,      autocarro,  70,   14). 
dist(braga,    porto,      automovel,  40,   15). 
dist(braga,    viseu,      automovel,  200,  90). 
dist(porto,    lisboa,     comboio,    180,  60). 
dist(porto,    lisboa,     automovel,  150,  90). 
dist(porto,    lisboa,     aviao,      120,  130). 
dist(porto,    lisboa,     autocarro,  150,  25). 
dist(lisboa,   faro,       comboio,    240,  80). 
dist(lisboa,   faro,       automovel,  200,  150). 
dist(lisboa,   faro,       aviao,      120,  140). 
dist(lisboa,   faro,       autocarro,  240,  70). 
dist(porto,    viseu,      automovel,  200,  90). 
dist(porto,    viseu,      comboio,    260,  70). 
dist(porto,    viseu,      autocarro,  250,  60). 
dist(braga,    guimaraes,  automovel,  20,   10). 
dist(braga,    guimaraes,  autocarro,  30,   15). 
dist(guimaraes,porto,      automovel,  50,   14). 
dist(guimaraes,porto,      comboio,    70,   3). 
dist(guimaraes,porto,      autocarro,  60,   12). 
dist(viseu,    coimbra,    automovel,  100,  40).
dist(coimbra,  braga,      automovel,  90,   60).
dist(coimbra,  lisboa,     comboio,    120,  30).

%AO CONTRARIO
dist(porto,    braga,      comboio,    50,   3). 
dist(porto,    braga,      autocarro,  70,   14). 
dist(porto,    braga,      automovel,  40,   15). 
dist(viseu,    braga,      automovel,  200,  90). 
dist(lisboa,   porto,      comboio,    180,  60). 
dist(lisboa,   porto,      automovel,  150,  90). 
dist(lisboa,   porto,      aviao,      120,  130). 
dist(lisboa,   porto,      autocarro,  150,  25). 
dist(faro,     lisboa,     comboio,    240,  80). 
dist(faro,     lisboa,     automovel,  200,  150). 
dist(faro,     lisboa,     aviao,      120,  140). 
dist(faro,     lisboa,     autocarro,  240,  70). 
dist(viseu,    porto,      automovel,  200,  90). 
dist(viseu,    porto,      comboio,    260,  70). 
dist(viseu,    porto,      autocarro,  250,  60). 
dist(guimaraes,braga,      automovel,  20,   10). 
dist(guimaraes,braga,      autocarro,  30,   15). 
dist(porto,    guimaraes,  automovel,  50,   14). 
dist(porto,    guimaraes,  comboio,    70,   3). 
dist(porto,    guimaraes,  autocarro,  60,   12). 
dist(coimbra,  viseu,      automovel,  100,  40).
dist(braga,    braga,      automovel,  90,   60).
dist(lisboa,   coimbra,    comboio,    120,  30).

iniciar:-retractall(fact(_)), retractall(origem(_)), retractall(destino(_)),write('Bem vindo e Boa sessão!'),nl,nl,perguntaOrigem().

%_________________________ PERGUNTAS ____________________________
/*
*
*PERGUNTA ORIGEM
*
*/
perguntaOrigem():- nl, write('Escolha a sua origem: '),nl, nl,
 write('"a." - Braga.'),nl,
 write('"b." - Porto.'),nl,
 write('"c." - Lisboa.'),nl,
 write('"d." - Guimarães.'),nl,
 write('"e." - Viseu.'),nl,
 write('"f." - Coimbra.'),nl,
 write('"g." - Faro.'),nl,
 write(' A sua opcao e : '),read(Origem),(
 (Origem == a), assert(origem(braga)),perguntaDestino();
 (Origem == b), assert(origem(porto)),perguntaDestino();
 (Origem == c), assert(origem(lisboa)),perguntaDestino();
 (Origem == d), assert(origem(guimaraes)),perguntaDestino();
 (Origem == e), assert(origem(viseu)),perguntaDestino();
 (Origem == f), assert(origem(coimbra)),perguntaDestino();
 (Origem == g), assert(origem(faro)),perguntaDestino()).

/*
*
*PERGUNTA DESTINO
*
*/

perguntaDestino():- findall(X, origem(X), Origem), nth0(0,Origem,OrigemRecebida),
   nl, write('Escolha o seu destino: '),nl, nl,
   (OrigemRecebida == 'braga' ->
      (
         write('"a." - Porto.'),nl,
         write('"b." - Lisboa.'),nl,
         write('"c." - Guimarães.'),nl,
         write('"d." - Viseu.'),nl,
         write('"e." - Coimbra.'),nl,
         write('"f." - Faro.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(porto)),verificarCaminho();
            (Destino == b), assert(destino(lisboa)),verificarCaminho();
            (Destino == c), assert(destino(guimaraes)),verificarCaminho();
            (Destino == d), assert(destino(viseu)),verificarCaminho();
            (Destino == e), assert(destino(coimbra)),verificarCaminho();
            (Destino == f), assert(destino(faro)),verificarCaminho()
         )
      )
   ;OrigemRecebida == 'porto' ->
      (
         write('"a." - Braga.'),nl,
         write('"b." - Lisboa.'),nl,
         write('"c." - Guimarães.'),nl,
         write('"d." - Viseu.'),nl,
         write('"e." - Coimbra.'),nl,
         write('"f." - Faro.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(braga)),verificarCaminho();
            (Destino == b), assert(destino(lisboa)),verificarCaminho();
            (Destino == c), assert(destino(guimaraes)),verificarCaminho();
            (Destino == d), assert(destino(viseu)),verificarCaminho();
            (Destino == e), assert(destino(coimbra)),verificarCaminho();
            (Destino == f), assert(destino(faro)),verificarCaminho()
         )
      )
      ;OrigemRecebida == 'lisboa' ->
      (
         write('"a." - Braga.'),nl,
         write('"b." - Porto.'),nl,
         write('"c." - Guimarães.'),nl,
         write('"d." - Viseu.'),nl,
         write('"e." - Coimbra.'),nl,
         write('"f." - Faro.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(braga)),verificarCaminho();
            (Destino == b), assert(destino(porto)),verificarCaminho();
            (Destino == c), assert(destino(guimaraes)),verificarCaminho();
            (Destino == d), assert(destino(viseu)),verificarCaminho();
            (Destino == e), assert(destino(coimbra)),verificarCaminho();
            (Destino == f), assert(destino(faro)),verificarCaminho()
         )
      )
      ;OrigemRecebida == 'guimaraes' ->
      (
         write('"a." - Braga.'),nl,
         write('"b." - Porto.'),nl,
         write('"c." - Lisboa.'),nl,
         write('"d." - Viseu.'),nl,
         write('"e." - Coimbra.'),nl,
         write('"f." - Faro.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(braga)),verificarCaminho();
            (Destino == b), assert(destino(porto)),verificarCaminho();
            (Destino == c), assert(destino(lisboa)),verificarCaminho();
            (Destino == d), assert(destino(viseu)),verificarCaminho();
            (Destino == e), assert(destino(coimbra)),verificarCaminho();
            (Destino == f), assert(destino(faro)),verificarCaminho()
         )
      )
      ;OrigemRecebida == 'viseu' ->
      (
         write('"a." - Braga.'),nl,
         write('"b." - Porto.'),nl,
         write('"c." - Lisboa.'),nl,
         write('"d." - Guimaraes.'),nl,
         write('"e." - Coimbra.'),nl,
         write('"f." - Faro.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(braga)),verificarCaminho();
            (Destino == b), assert(destino(porto)),verificarCaminho();
            (Destino == c), assert(destino(lisboa)),verificarCaminho();
            (Destino == d), assert(destino(guimaraes)),verificarCaminho();
            (Destino == e), assert(destino(coimbra)),verificarCaminho();
            (Destino == f), assert(destino(faro)),verificarCaminho()
         )
      )
      ;OrigemRecebida == 'coimbra' ->
      (
         write('"a." - Braga.'),nl,
         write('"b." - Porto.'),nl,
         write('"c." - Lisboa.'),nl,
         write('"d." - Guimaraes.'),nl,
         write('"e." - Viseu.'),nl,
         write('"f." - Faro.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(braga)),verificarCaminho();
            (Destino == b), assert(destino(porto)),verificarCaminho();
            (Destino == c), assert(destino(lisboa)),verificarCaminho();
            (Destino == d), assert(destino(guimaraes)),verificarCaminho();
            (Destino == e), assert(destino(viseu)),verificarCaminho();
            (Destino == f), assert(destino(faro)),verificarCaminho()
         )
      )
      ;OrigemRecebida == 'faro' ->
      (
         write('"a." - Braga.'),nl,
         write('"b." - Porto.'),nl,
         write('"c." - Lisboa.'),nl,
         write('"d." - Guimaraes.'),nl,
         write('"e." - Viseu.'),nl,
         write('"f." - Coimbra.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(braga)),verificarCaminho();
            (Destino == b), assert(destino(porto)),verificarCaminho();
            (Destino == c), assert(destino(lisboa)),verificarCaminho();
            (Destino == d), assert(destino(guimaraes)),verificarCaminho();
            (Destino == e), assert(destino(viseu)),verificarCaminho();
            (Destino == f), assert(destino(coimbra)),verificarCaminho()
         )
      )
   ).

verificarCaminho():- findall(O, origem(O), Origem),findall(D, destino(D), Destino),nth0(0,Destino,DestinoUsar), nth0(0,Origem,OrigemUsar),
                     caminhocurto(OrigemUsar, DestinoUsar, L),dist(L, Custos), resposta(L,TransportesUsar, Custos).

resposta(CaminhoPercorrer, TransportesUsar, Custos):- nl, write('Caminho encontrado!\nEste é o caminho para percorrer:'), reverse(CaminhoPercorrer,RealCaminhoPercorrer,[]),nl, dizerCaminhos(RealCaminhoPercorrer).  

dizerCaminhos([X]).
dizerCaminhos([H|T]):- nl,write('De: '),write(H),
nth0(0,T,Destino),
nl,write('Para: '),write(Destino),
melhor_alternativa(H, Destino, Opcao, Dista, Custo),
nl,write('Tempo da viagem: '),write(Dista),
nl,write('Custo da viagem: '),write(Custo),
nl,write('Meio de Transporte: '), write(Opcao),
dizerCaminhos(T).


/* dizerCaminhos([X],X).
dizerCaminhos([H|T],R):- nl, write('asasd'),melhor_alternativa(T,T,MeioTransporte), write(MeioTransporte), dizerCaminhos(T,R). */
% AULA 9 - SISTEMA DE INFERÊNCIA DESTE PROGRAMA %
%onde tem Tempo tinhamos "comprimento", "length"%

%reverter lista
reverse([],Z,Z).
reverse([H|T],Z,Acc) :- reverse(T,Z,[H|Acc]).


caminhocurto(X,Y,C):- caminho(X,Y,C), % gerar
 maiscurto(X,Y,C).

maiscurto(Origem,Destino,CaminhoFazer):- nl,/*   nl, write('X '), write(Origem),
                    nl, write('Y '), write(Destino),
                    nl, write('C '), write(CaminhoFazer), 
   nl,write('Opcao: '),write(Opcao),nl,*/
    dist(CaminhoFazer,NC),/*!,! se obtiver uma resposta verdadeira, já não mais o menor*/
 \+ menor(Origem,Destino,NC). /*mudar aqui por causa do ponto de exclamação, quando encontra uma solução, já não procura por mais*/

menor(Origem,Destino,NC):- caminho(Origem,Destino,C1), 
 dist(C1,NC1), 
 NC1<NC. 

%  AULA 8 caminho.pl 
%Caminho que passa por menos cidades no gráfo
caminho(Origem,Destino,Caminho):- caminho(Origem,Destino,[Origem],Caminho). 
caminho(X,X,Caminho,Caminho). 


caminho(Origem,Destino,Visitado,Caminho) 
 :- arco(Origem,LugarVerificar),
 /* nl,write('origem: '),write(Origem),
 nl,write('destino: '),write(Destino),
 nl,write('a verificar: '),write(LugarVerificar),nl, */
 \+ member(LugarVerificar,Visitado), /* o \+ é se o operador não for provavel, basicamente é a negação*/
caminho(LugarVerificar,Destino,[LugarVerificar | Visitado],Caminho). 


dist([_],0). %quando eu só tiver uma cidade na lista quer dizer que já percorri todas, sendo _ a cidade
dist([A,B|C], Cust):- /*nl,nl, write('Local 1 '), write(A),
nl,write('Local 2 '), write(B),
nl,write('Restantes '), write(C), */
/* nl,write('Cust '), write(Cust), */
   melhor_alternativa(B,A,Opcao),
    dist(B,A,Opcao,Temp1, Custo1),/* Vai ser para mudar nesta parte quase de certeza*/
/*     nl,write('meio transporte: '),write(MeioTransporte),
    nl,write('Temp1: '),write(Temp1),
    nl,write('Custo1: '),write(Custo1),nl, */
    dist([B|C], Custo2),
    Cust is Temp1*Custo1 + Custo2.
%Multiplicação da Tempo pelo tempo menor que o programa encontra
% O Cust2 serve só para fazer a recursividade do processo, que será usado na segunda clausula dist(B|C, Cust2), de forma a conseguirmos chamar as próximas cidades para o cáculo da multiplicação de Tempo pelo tempo%

melhor_alternativa(Origem, Destino, Opcao, Tempo, Custo) :-
   dist(Origem, Destino, Opcao, Tempo, Custo),
   \+ (dist(Origem, Destino, OutraOpcao, OutraTempo, OutroCusto),
       OutraOpcao \= Opcao,
       OutraTempo*OutroCusto < Tempo*Custo).

melhor_alternativa(Origem, Destino, Opcao) :-
   dist(Origem, Destino, Opcao, Tempo, Custo),
   \+ (dist(Origem, Destino, OutraOpcao, OutraTempo, OutroCusto),
      OutraOpcao \= Opcao,
      OutraTempo*OutroCusto < Tempo*Custo).

% na consola já só temos de indicar o nosso ponto de partida e o programa já indica o resto do percurso que a pessoa terá de fazer e o custo do respetivo percurso entre cidades.
% CONSOLA --> caminhocurto(braga, viana, L), dist(L, D).--> D = 8800, L = [viana, valenca, braga]
%caminhocurto(braga, lisboa, L), dist(L, D).
%caminhocurto(braga, porto, L), dist(L, D).
%caminhocurto(braga, coimbra, L), dist(L, D).