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

caminhocurto(X,Y,C, TransportesUsar):- nl,write('Comeco'),caminho(X,Y,C), % gerar
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
caminho(Origem,Destino,Caminho):- /* nl,write(Origem),write(Destino), */caminho(Origem,Destino,[Origem],Caminho). 
caminho(X,X,Caminho,Caminho). 


caminho(Origem,Destino,Visitado,Caminho) 
 :- arco(Origem,LugarVerificar),
 nl,write('origem: '),write(Origem),
 nl,write('destino: '),write(Destino),
 nl,write('a verificar: '),write(LugarVerificar),nl,
 \+ member(LugarVerificar,Visitado), /* o \+ é se o operador não for provavel, basicamente é a negação*/
caminho(LugarVerificar,Destino,[LugarVerificar | Visitado],Caminho). 


dist([_],0). %quando eu só tiver uma cidade na lista quer dizer que já percorri todas, sendo _ a cidade
dist([A,B|C], Cust):- nl,nl,write('Local 1 '), write(A),
nl,write('Local 2 '), write(B),
nl,write('Restantes '), write(C),
    dist(B,A,Opcao,Temp1, Custo1),
    dist([B|C], Custo2),
    Cust is Temp1*Custo1 + Custo2.