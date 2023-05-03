% PROJETO 2 - 
% CAMINHO ENTRE CIDADES, PROCURAR O CAMINHO MAIS CURTO ENTRE TODOS OS POSSÍVEIS PARA IR DE UM SÍTIO AO OUTRO%
% aceder ao predicado caminho(X,Y,C) 

% Se quisesse otimizar também o tempo da viagem tinha de acrescentar um parâmetro nos arcos, ficando 4 parÂmetros lá dentro 
% Depois tinhamos de ver se era prioritário ser mais rápida a viagem ou mais curta%
%
 % X e Y são cidades; C é o caminho 
% ligações entre as cidades - origem, destino, distância
arco(porto,famalicao, 30). 
arco(porto,esposende, 50). 
arco(famalicao,braga, 18). 
arco(famalicao,barcelos, 18). 
arco(braga,valenca, 70). 
arco(barcelos,viana, 20). 
arco(barcelos,braga, 18). 
arco(barcelos,esposende, 15). 
arco(esposende,viana, 25). 
arco(esposende,barcelos, 15). 
arco(valenca,viana, 40). 
% calcula o comprimento de um dado caminho: comprimento(C,N) 
%comprimento([],0). 
%comprimento([_|R],N):- comprimento(R,N1), N is N1+1.


% AULA 9 - SISTEMA DE INFERÊNCIA DESTE PROGRAMA %
%onde tem distancia tinhamos "comprimento", "length"%
caminhocurto(X,Y,C):-caminho(X,Y,C), % gerar
 maiscurto(X,Y,C).% testar
maiscurto(X,Y,C):- distancia(C,NC),!, 
 \+ menor(X,Y,NC). 
menor(X,Y,NC):- caminho(X,Y,C1), 
 distancia(C1,NC1), 
 NC1<NC. 

%  AULA 8 caminho.pl 
%Caminho que passa por menos cidades no gráfo
caminho(X,Z,Caminho):-caminho(X,Z,[X],Caminho). 
caminho(X,X,Caminho,Caminho). 
caminho(X,Z,Visitado,Caminho) 
 :- arco(X,Y,_), 
 \+ member(Y,Visitado), 
caminho(Y,Z,[Y | Visitado],Caminho). 


distancia([_],0). %quando eu só tiver uma cidade na lista quer dizer que já percorri todas, sendo _ a cidade
% caminho(famalicao,braga,C). --> C = [braga, famalicao] (a lista é lida de trás para a frente)
% à um arco famalicao para braga [braga, famalicao, porto], para somar as distancias vamos somando de 2 a 2, neste caso de famalicao para braga a distância no arco é 18, depois vê a distância entre porto e famalicão que é 18 e soma essas distâncias no fim, fica 48
% vamos processando pares e tirando a cabeça da lista, quando percorrermos todos vamos terminar sempre com uma cidade na lista
% como fazer a soma dos elementos da lista (como está descrito em cima), o código só inica que a soma é de 2 a 2 e não quantos elementos terá a lista inicial, isso não importa, isto serve só para definir a forma como esta soma será efetuada.
distancia([A,B|C], Dist):-arco(B,A,X), distancia([B|C], Y), Dist is X + Y.

% CONSOLA -->  distancia([famalicao, porto], Dist). --> Dist = 30
% CONSOLA -->  distancia([braga, famalicao, porto], Dist). --> Dist = 48 

% Se quisermos que no resultado nos dê também a soma da distância dos percursos, então depois do "caminhocurto" metemos ,distancia() que é o predicado que está a efetuar a soma de 2 em 2 cidades da lista.
% CONSOLA --> caminhocurto(braga, viana, L), distancia(L, D). --> D = 110, L = [viana, valenca, braga]








% PERGUNTAS NA CONSOLA 
% caminhocurto(porto, esposende, C). -->C = [esposende, porto]
% 
% com "distancia" em vez de "comprimento"
% caminho(famalicao,braga,C). --> C = [braga, famalicao] (a lista é lida de trás para a frente)
% à um arco famalicao para braga [braga, famalicao, porto], para somar as distancias vamos somando de 2 a 2, neste caso de famalicao para braga a distância no arco é 18, depois vê a distância entre porto e famalicão que é 18 e soma essas distâncias no fim, fica 48
% %

