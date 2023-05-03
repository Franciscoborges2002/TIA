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
arco(porto,famalicao). 
arco(porto,esposende). 
arco(famalicao,braga). 
arco(famalicao,barcelos). 
arco(braga,valenca). 
arco(barcelos,viana). 
arco(barcelos,braga). 
arco(barcelos,esposende). 
arco(esposende,viana). 
arco(esposende,barcelos). 
arco(valenca,viana). 

dist(porto,famalicao, 30, 20). 
dist(porto,esposende, 50, 40). 
dist(famalicao,braga, 18, 10). 
dist(famalicao,barcelos, 18, 10). 
dist(braga,valenca, 70, 80). 
dist(barcelos,viana, 20, 40). 
dist(barcelos,braga, 18, 20). 
dist(barcelos,esposende, 15, 20). 
dist(esposende,viana, 25, 60). 
dist(esposende,barcelos, 15, 30). 
dist(valenca,viana, 40, 80). 

% AULA 9 - SISTEMA DE INFERÊNCIA DESTE PROGRAMA %
%onde tem distancia tinhamos "comprimento", "length"%
caminhocurto(X,Y,C):-caminho(X,Y,C), % gerar
 maiscurto(X,Y,C).% testar
maiscurto(X,Y,C):- dist(C,NC),!, 
 \+ menor(X,Y,NC). 
menor(X,Y,NC):- caminho(X,Y,C1), 
 dist(C1,NC1), 
 NC1<NC. 

%  AULA 8 caminho.pl 
%Caminho que passa por menos cidades no gráfo
caminho(X,Z,Caminho):-caminho(X,Z,[X],Caminho). 
caminho(X,X,Caminho,Caminho). 
caminho(X,Z,Visitado,Caminho) 
 :- arco(X,Y), 
 \+ member(Y,Visitado), 
caminho(Y,Z,[Y | Visitado],Caminho). 


dist([_],0). %quando eu só tiver uma cidade na lista quer dizer que já percorri todas, sendo _ a cidade
dist([A,B|C], Cust):-dist(B,A,Dist1, Temp1), dist([B|C], Cust2), Cust is Dist1*Temp1 + Cust2.
%Multiplicação da distancia pelo tempo menor que o programa encontra
% O Cust2 serve só para fazer a recursividade do processo, que será usado na segunda clausula dist(B|C, Cust2), de forma a conseguirmos chamar as próximas cidades para o cáculo da multiplicação de distancia pelo tempo%

% na consola já só temos de indicar o nosso ponto de partida e o programa já indica o resto do percurso que a pessoa terá de fazer e o custo do respetivo percurso entre cidades.
% CONSOLA --> caminhocurto(braga, viana, L), dist(L, D).--> D = 8800, L = [viana, valenca, braga]
