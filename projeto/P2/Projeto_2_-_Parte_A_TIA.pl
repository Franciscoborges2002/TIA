% PROJETO 2 - 
% CAMINHO ENTRE CIDADES, PROCURAR O CAMINHO MAIS CURTO E MAIS BARATO ENTRE TODOS OS POSSÍVEIS PARA IR DE UM SÍTIO AO OUTRO%
% aceder ao predicado caminho(X,Y,C) 

%Podemos meter o sistema assim ou podiamos meter de outra maneira para não estarmos a mudar o sistema de inferência antigo

%Tabela do enunciado
arco(braga,porto). 
arco(braga,porto). 
arco(braga,porto). 
arco(braga,viseu). 
arco(porto,lisboa). 
arco(porto,lisboa). 
arco(porto,lisboa). 
arco(porto,lisboa). 
arco(lisboa,faro). 
arco(lisboa,faro). 
arco(lisboa,faro). 
arco(lisboa,faro). 
arco(porto,viseu). 
arco(porto,viseu). 
arco(porto,viseu). 
arco(braga,guimaraes). 
arco(braga,guimaraes). 
arco(guimaraes,porto). 
arco(guimaraes,porto). 
arco(guimaraes,porto). 
arco(viseu,coimbra).
arco(coimbra,braga).
arco(coimbra,lisboa).


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


% AULA 9 - SISTEMA DE INFERÊNCIA DESTE PROGRAMA %
%onde tem distancia tinhamos "comprimento", "length"%
caminhocurto(X,Y,T,C):-caminho(X,Y,C), % gerar
 maiscurto(X,Y,T,C).% testar
maiscurto(X,Y,T,C):- dist(C,NC),!, 
 \+ menor(X,Y,T,NC). 
menor(X,Y,T,NC):- caminho(X,Y,T,C1), 
 dist(C1,NC1), 
 NC1<NC. 


%  AULA 8 caminho.pl 
%Caminho que passa por menos cidades no gráfo
caminho(X,Z,T,Caminho):-caminho(X,Z,T,[X],Caminho). 
caminho(X,X,T,Caminho,Caminho). 
caminho(X,Z,T,Visitado,Caminho) 
 :- arco(X,Y), 
 \+ member(Y,Visitado), 
caminho(Y,Z,[Y | Visitado],Caminho). 


dist([_],0). %quando eu só tiver uma cidade na lista quer dizer que já percorri todas, sendo _ a cidade
dist([A,B|C], Cust):-dist(B,A,T,Dist1, Temp1), dist([B|C], Cust2), Cust is Dist1*Temp1 + Cust2.
%Multiplicação da distancia pelo tempo menor que o programa encontra
% O Cust2 serve só para fazer a recursividade do processo, que será usado na segunda clausula dist(B|C, Cust2), de forma a conseguirmos chamar as próximas cidades para o cáculo da multiplicação de distancia pelo tempo%

% na consola ja so temos de indicar o nosso ponto de partida e o programa já indica o resto do percurso que a pessoa terá de fazer e o custo do respetivo percurso entre cidades.
% CONSOLA --> caminhocurto(braga, viana, L), dist(L, D).--> D = 8800, L = [viana, valenca, braga]








