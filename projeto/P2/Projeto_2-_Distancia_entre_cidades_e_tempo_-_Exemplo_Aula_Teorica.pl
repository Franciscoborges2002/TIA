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

/* dist(braga, porto, comboio, 50, 3).  */
dist(braga,    porto,      autocarro,  70,   14). 
dist(braga,    porto,      automovel,  40,   15). 
dist(braga,    viseu,      automovel,  200,  90). 
dist(porto,    lisboa,     comboio,    180,  60). 
/* dist(porto,    lisboa,     automovel,  150,  90). 
dist(porto,    lisboa,     aviao,      120,  130). 
dist(porto,    lisboa,     autocarro,  150,  25).  */
dist(lisboa,   faro,       comboio,    240,  80). 
/* dist(lisboa,   faro,       automovel,  200,  150). 
dist(lisboa,   faro,       aviao,      120,  140). 
dist(lisboa,   faro,       autocarro,  240,  70).  */
dist(porto,    viseu,      automovel,  200,  90). 
/* dist(porto,    viseu,      comboio,    260,  70). 
dist(porto,    viseu,      autocarro,  250,  60).  */
dist(braga,    guimaraes,  automovel,  20,   10). 
/* dist(braga,    guimaraes,  autocarro,  30,   15).  */
dist(guimaraes,porto,      automovel,  50,   14). 
/* dist(guimaraes,porto,      comboio,    70,   3). 
dist(guimaraes,porto,      autocarro,  60,   12).  */
dist(viseu,    coimbra,    automovel,  100,  40).
dist(coimbra,  braga,      automovel,  90,   60).
dist(coimbra,  lisboa,     comboio,    120,  30).
% AULA 9 - SISTEMA DE INFERÊNCIA DESTE PROGRAMA %
%onde tem distancia tinhamos "comprimento", "length"%
caminhocurto(X,Y,C):- nl,write('Comeco'),caminho(X,Y,C), % gerar
 maiscurto(X,Y,C).% testar

maiscurto(Origem,Destino,CaminhoFazer):- nl,/*   nl, write('X '), write(Origem),
                    nl, write('Y '), write(Destino),
                    nl, write('C '), write(CaminhoFazer), */
    dist(CaminhoFazer,NC),!,/*! se obtiver uma resposta verdadeira, já não faz mais vezes o menor*/nl,nl,write('teste'),nl,nl,
 \+ menor(Origem,Destino,NC). /*mudar aqui por causa do ponto de exclamação, quando encontra uma solução, já não procura por mais*/

menor(Origem,Destino,NC):- caminho(Origem,Destino,C1), 
 dist(C1,NC1), 
 NC1<NC. 

%  AULA 8 caminho.pl 
%Caminho que passa por menos cidades no gráfo
caminho(Origem,Destino,Caminho):- /* nl,write(Origem),write(Destino), */caminho(Origem,Destino,[Origem],Caminho). 
caminho(X,X,Caminho,Caminho). 


caminho(Origem,Destino,Visitado,Caminho) 
 :- arco(Origem,LugarVerificar),
 nl,nl,write('origem: '),write(Origem),
 nl,write('destino: '),write(Destino),
 nl,write('a verificar: '),write(LugarVerificar),
 nl,write('ja visitado: '),write(Visitado),nl,
 \+ member(LugarVerificar,Visitado), /* o \+ é se o operador não for provavel, basicamente é a negação*/
caminho(LugarVerificar,Destino,[LugarVerificar | Visitado],Caminho). 


dist([_],0). %quando eu só tiver uma cidade na lista quer dizer que já percorri todas, sendo _ a cidade
dist([A,B|C], Cust):- nl,nl,write('Local 1 '), write(A),
nl,write('Local 2 '), write(B),
nl,write('Restantes '), write(C),
nl,write('Cust '), write(Cust),
    dist(B,A,MeioTransporte,Dist1, Temp1),
    dist([B|C], Cust2),
    Cust is Dist1*Temp1 + Cust2.
%Multiplicação da distancia pelo tempo menor que o programa encontra
% O Cust2 serve só para fazer a recursividade do processo, que será usado na segunda clausula dist(B|C, Cust2), de forma a conseguirmos chamar as próximas cidades para o cáculo da multiplicação de distancia pelo tempo%

% na consola já só temos de indicar o nosso ponto de partida e o programa já indica o resto do percurso que a pessoa terá de fazer e o custo do respetivo percurso entre cidades.
% CONSOLA --> caminhocurto(braga, viana, L), dist(L, D).--> D = 8800, L = [viana, valenca, braga]
