%
%_______________BACKWARD_______________________ era como chegar ao medico e dizer os problemas que temos e ele depois dar as soluçoes 

:-  op( 800, fx, if).
:-  op( 700, xfx, then).
:-  op( 300, xfy, or).
:-  op( 200, xfy, and).

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




%_________________________ BASE CONHECIMENTO _________________________________

if sem_orcamento and sem_restricao then viagemLivre.
if gastar_pouco and viagem_curta then viagemTrabalho. 
if gastar_muito and viagem_longa then viagemPasseio.

if sem_orcamento and viagem_curta then viagemCurta.
if gastar_pouco and viagem_longa then viagemGastarPoucoLonga. 
if gastar_muito and sem_restricao then viagemGastarMuito.

if sem_orcamento and viagem_longa then viagemLonga.
if gastar_pouco and sem_restricao then viagemGastarPouco. 
if gastar_muito and viagem_curta then viagemGastarMuitoCurta.

if viagemLivre and casa_de_banho then viagemLivreCasaBanho.




%___________________________ BASE DE DADOS ____________________________________

solucao('Origem: Braga, Destino: Porto, Preco: 3€, Transporte: Comboio, Tempo de Viagem: 50 minutos', origem_braga, destino_porto, [gastar_pouco, sem_orcamento, viagem_curta, sem_restricao, casa_de_banho]).
solucao('Origem: Braga, Destino: Porto, Preco: 14€, Transporte: Autocarro, Tempo de Viagem: 70 minutos', origem_braga, destino_porto, [gastar_muito, sem_orcamento, viagem_longa, sem_restricao, nao_casa_de_banho]).
solucao('Origem: Braga, Destino: Porto, Preco: 15€, Transporte: Automovel, Tempo de Viagem: 40 minutos', origem_braga, destino_porto, [gastar_muito, sem_orcamento], [viagem_curta, sem_restricao], [perfil4, perfil5, perfil7, perfil8]).

solucao('Origem: Porto, Destino: Braga, Preco: 3€, Transporte: Comboio, Tempo de Viagem: 50 minutos', origem_porto, destino_braga, [gastar_pouco, sem_orcamento], [viagem_curta, sem_restricao], [perfil82, perfil83, perfil85, perfil86]).
solucao('Origem: Porto, Destino: Braga, Preco: 14€, Transporte: Autocarro, Tempo de Viagem: 70 minutos', origem_porto, destino_braga, [gastar_muito, sem_orcamento], [viagem_longa, sem_restricao], [perfil86, perfil87, perfil89, perfil90]).
solucao('Origem: Porto, Destino: Braga, Preco: 15€, Transporte: Automovel, Tempo de Viagem: 40 minutos', origem_porto, destino_braga, [gastar_muito, sem_orcamento], [viagem_curta, sem_restricao], [perfil85, perfil86, perfil88, perfil89]).






solucao('Origem: Porto, Destino: Lisboa, Preco: 60€, Transporte: Comboio, Tempo de Viagem: 180 minutos', origem_porto, destino_lisboa, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil11, perfil12, perfil14, perfil15]).
solucao('Origem: Porto, Destino: Lisboa, Preco: 90€, Transporte: Automovel, Tempo de Viagem: 150 minutos', origem_porto, destino_lisboa, [gastar_muito, sem_orcamento], [viagem_longa, sem_restricao], [perfil14, perfil15, perfil17, perfil18]).
solucao('Origem: Porto, Destino: Lisboa, Preco: 130€, Transporte: Aviao, Tempo de Viagem: 120 minutos', origem_porto, destino_lisboa, [gastar_muito, sem_orcamento], [viagem_curta, sem_restricao], [perfil13, perfil14, perfil16, perfil17]).
solucao('Origem: Porto, Destino: Lisboa, Preco: 25€, Transporte: Autocarro, Tempo de Viagem: 150 minutos', origem_porto, destino_lisboa, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil11, perfil12, perfil14, perfil15]).

solucao('Origem: Lisboa, Destino: Porto, Preco: 60€, Transporte: Comboio, Tempo de Viagem: 180 minutos', origem_lisboa, destino_porto, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil92, perfil93, perfil95, perfil96]).
solucao('Origem: Lisboa, Destino: Porto, Preco: 90€, Transporte: Automovel, Tempo de Viagem: 150 minutos', origem_lisboa, destino_porto, [gastar_muito, sem_orcamento], [viagem_longa, sem_restricao], [perfil95, perfil96, perfil98, perfil99]).
solucao('Origem: Lisboa, Destino: Porto, Preco: 130€, Transporte: Aviao, Tempo de Viagem: 120 minutos', origem_lisboa, destino_porto, [gastar_muito, sem_orcamento], [viagem_curta, sem_restricao], [perfil13, perfil14, perfil16, perfil17]).
solucao('Origem: Lisboa, Destino: Porto, Preco: 25€, Transporte: Autocarro, Tempo de Viagem: 150 minutos', origem_lisboa, destino_porto, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil92, perfil93, perfil95, perfil96]).






solucao('Origem: Lisboa, Destino: Faro, Preco: 80€, Transporte: Comboio, Tempo de Viagem: 240 minutos', origem_lisboa, destino_faro, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil20, perfil21, perfil23, perfil24]).
solucao('Origem: Lisboa, Destino: Faro, Preco: 150€, Transporte: Automóvel, Tempo de Viagem: 200 minutos', origem_lisboa, destino_faro, [gastar_muito, sem_orcamento], [viagem_longa, sem_restricao], [perfil23, perfil24, perfil26, perfil27]).
solucao('Origem: Lisboa, Destino: Faro, Preco: 140€, Transporte: Avião, Tempo de Viagem: 120 minutos', origem_lisboa, destino_faro, [gastar_muito, sem_orcamento], [viagem_curta, sem_restricao], [perfil22, perfil23, perfil25, perfil26]).
solucao('Origem: Lisboa, Destino: Faro, Preco: 70€, Transporte: Autocarro, Tempo de Viagem: 240 minutos', origem_lisboa, destino_faro, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil20, perfil21, perfil23, perfil24]).

solucao('Origem: Faro, Destino: Lisboa, Preco: 80€, Transporte: Comboio, Tempo de Viagem: 240 minutos', origem_faro, destino_lisboa, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil101, perfil102, perfil103, perfil04]).
solucao('Origem: Faro, Destino: Lisboa, Preco: 150€, Transporte: Automóvel, Tempo de Viagem: 200 minutos', origem_faro, destino_lisboa, [gastar_muito, sem_orcamento], [viagem_longa, sem_restricao], [perfil104, perfil105, perfil107, perfil108]).
solucao('Origem: Faro, Destino: Lisboa, Preco: 140€, Transporte: Avião, Tempo de Viagem: 120 minutos', origem_faro, destino_lisboa, [gastar_muito, sem_orcamento], [viagem_curta, sem_restricao], [perfil103, perfil104, perfil106, perfil107]).
solucao('Origem: Faro, Destino: Lisboa, Preco: 70€, Transporte: Autocarro, Tempo de Viagem: 240 minutos', origem_faro, destino_lisboa, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil101, perfil102, perfil104, perfil105]).




solucao('Origem: Porto, Destino: Viseu, Preco: 90€, Transporte: Automóvel, Tempo de Viagem: 200 minutos', origem_porto, destino_viseu, [gastar_muito, sem_orcamento], [viagem_curta, sem_restricao], [perfil31, perfil32, perfil34, perfil35]).
solucao('Origem: Porto, Destino: Viseu, Preco: 70€, Transporte: Comboio, Tempo de Viagem: 260 minutos', origem_porto, destino_viseu, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil29, perfil30, perfil32, perfil33]).
solucao('Origem: Porto, Destino: Viseu, Preco: 60€, Transporte: Autocarro, Tempo de Viagem: 250 minutos', origem_porto, destino_viseu, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil29, perfil30, perfil32, perfil33]).

solucao('Origem: Viseu, Destino: Porto, Preco: 90€, Transporte: Automóvel, Tempo de Viagem: 200 minutos', origem_viseu, destino_porto, [gastar_muito, sem_orcamento], [viagem_curta, sem_restricao], [perfil112, perfil113, perfil115, perfil116]).
solucao('Origem: Viseu, Destino: Porto, Preco: 70€, Transporte: Comboio, Tempo de Viagem: 260 minutos', origem_viseu, destino_porto, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil110, perfil111, perfil113, perfil114]).
solucao('Origem: Viseu, Destino: Porto, Preco: 60€, Transporte: Autocarro, Tempo de Viagem: 250 minutos', origem_viseu, destino_porto, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil110, perfil111, perfil113, perfil114]).





solucao('Origem: Braga, Destino: Guimaraes, Preco: 10€, Transporte: Automóvel, Tempo de Viagem: 20 minutos', origem_braga, destino_guimaraes, [gastar_pouco, sem_orcamento], [viagem_curta, sem_restricao], [perfil37, perfil38, perfil40, perfil41]).
solucao('Origem: Braga, Destino: Guimaraes, Preco: 15€, Transporte: Autocarro, Tempo de Viagem: 30 minutos', origem_braga, destino_guimaraes, [gastar_muito, sem_orcamento], [viagem_longa, sem_restricao], [perfil41, perfil42, perfil44, perfil45]).

solucao('Origem: Guimaraes, Destino: Braga, Preco: 10€, Transporte: Automóvel, Tempo de Viagem: 20 minutos', origem_guimaraes, destino_braga, [gastar_pouco, sem_orcamento], [viagem_curta, sem_restricao], [perfil118, perfil119, perfil121, perfil122]).
solucao('Origem: Guimaraes, Destino: Braga, Preco: 15€, Transporte: Autocarro, Tempo de Viagem: 30 minutos', origem_guimaraes, destino_braga, [gastar_muito, sem_orcamento], [viagem_longa, sem_restricao], [perfil122, perfil123, perfil125, perfil126]).





solucao('Origem: Guimaraes, Destino: Porto, Preco: 14€, Transporte: Automóvel, Tempo de Viagem: 50 minutos', origem_guimaraes, destino_porto, [gastar_muito, sem_orcamento], [viagem_curta, sem_restricao], [perfil49, perfil50, perfil52, perfil53]).
solucao('Origem: Guimaraes, Destino: Porto, Preco: 3€, Transporte: Comboio, Tempo de Viagem: 70 minutos', origem_guimaraes, destino_porto, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil47, perfil48, perfil50, perfil51]).
solucao('Origem: Guimaraes, Destino: Porto, Preco: 12€, Transporte: Autocarro, Tempo de Viagem: 60 minutos', origem_guimaraes, destino_porto, [gastar_muito, sem_orcamento], [viagem_longa, viagem_curta, sem_restricao], [perfil46, perfil49, perfil50, perfil51, perfil52, perfil53, perfil54]).

solucao('Origem: Porto, Destino: Guimaraes, Preco: 14€, Transporte: Automóvel, Tempo de Viagem: 50 minutos', origem_porto, destino_guimaraes, [gastar_muito, sem_orcamento], [viagem_curta, sem_restricao], [perfil130, perfil131, perfil133, perfil134]).
solucao('Origem: Porto, Destino: Guimaraes, Preco: 3€, Transporte: Comboio, Tempo de Viagem: 70 minutos', origem_porto, destino_guimaraes, [gastar_pouco, sem_orcamento], [viagem_longa, sem_restricao], [perfil128, perfil129, perfil131, perfil132]).
solucao('Origem: Porto, Destino: Guimaraes, Preco: 12€, Transporte: Autocarro, Tempo de Viagem: 60 minutos', origem_porto, destino_guimaraes, [gastar_muito, sem_orcamento], [viagem_longa, viagem_curta, sem_restricao], [perfil130, perfil131, perfil132, perfil133, perfil134, perfil135]).





solucao('Origem: Viseu, Destino: Coimbra, Preco: 40€, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_viseu, destino_coimbra, [gastar_pouco, gastar_muito, sem_orcamento], [viagem_curta, viagem_longa, sem_restricao], [perfil55, perfil56, perfil57, perfil58, perfil59, perfil60, perfil61, perfil62, perfil63]).

solucao('Origem: Coimbra, Destino: Viseu, Preco: 40€, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_coimbra, destino_viseu, [gastar_pouco, gastar_muito, sem_orcamento], [viagem_curta, viagem_longa, sem_restricao], [perfil136, perfil137, perfil138, perfil139, perfil140, perfil141, perfil142, perfil143, perfil144]).




solucao('Origem: Coimbra, Destino: Braga, Preco: 60€, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_coimbra, destino_braga, [gastar_pouco, gastar_muito, sem_orcamento], [viagem_curta, viagem_longa, sem_restricao], [perfil64, perfil65, perfil66, perfil67, perfil68, perfil69, perfil70, perfil71, perfil72]).

solucao('Origem: Braga, Destino: Coimbra, Preco: 60€, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_braga, destino_coimbra, [gastar_pouco, gastar_muito, sem_orcamento], [viagem_curta, viagem_longa, sem_restricao], [perfil145, perfil146, perfil147, perfil148, perfil149, perfil150, perfil151, perfil152, perfil153]).




solucao('Origem: Coimbra, Destino: Lisboa, Preco: 30€, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_coimbra, destino_lisboa, [gastar_pouco, gastar_muito, sem_orcamento], [viagem_curta, viagem_longa, sem_restricao], [perfil73, perfil74, perfil75, perfil76, perfil77, perfil78, perfil79, perfil80, perfil81]).

solucao('Origem: Lisboa, Destino: Coimbra, Preco: 30€, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_lisboa, destino_coimbra, [gastar_pouco, gastar_muito, sem_orcamento], [viagem_curta, viagem_longa, sem_restricao], [perfil154, perfil155, perfil156, perfil157, perfil158, perfil159, perfil160, perfil161, perfil162]).







%_____________________________ FORWARD _______________________________


demo:- new_derived_fact( P),             % A new fact
   !,
   write( 'Derived: '), write( P), nl,
   assert( fact( P)),
   resultado(P),
   demo.                           % Continue
demo:- write( 'No more facts').          % All facts derived

new_derived_fact( Concl)  :-
   if Cond then Concl,               % A rule
   \+ fact( Concl),                 % Rule's conclusion not yet a fact
   composed_fact( Cond).             % Condition true?

composed_fact( Cond)  :-
   fact( Cond).                      % Simple fact

composed_fact( Cond1 and Cond2)  :-
   composed_fact( Cond1),
   composed_fact( Cond2).            % Both conjuncts true

composed_fact( Cond1 or Cond2)  :-
   composed_fact( Cond1)
   ;
   composed_fact( Cond2).






%_________________________ INTERFACE _____________________________________
:-dynamic(fact/1). % definir fact como dinamico
:-[backward, forward, bd, baseconhecimento].

		%___________________________INICIO_____________________________
		%
iniciar:-retractall(fact(_)),write('Bem vindo e Boa sessão!'),nl,nl,pergunta1().

		%_________________________ PERGUNTAS ____________________________
		%
pergunta1():-write('Como te chamas?'), nl, nl, read(User), inf(User).

inf(User):-nl, write(User), write(', para te conseguirmos aconselhar com um meio de transporte escolhe uma opcao para cada pergunta. '), nl, pergunta2(User).


pergunta2(User):- nl, write('Escolha a sua origem: '),nl, nl,
 write('"a." - Braga.'),nl,
 write('"b." - Porto.'),nl,
 write('"c." - Lisboa.'),nl,
 write('"d." - Guimarães.'),nl,
 write('"e." - Viseu.'),nl,
 write('"f." - Coimbra.'),nl,
 write('"g." - Faro.'),nl,
 write(' A sua opcao e : '),read(Origem),(
 (Origem == a), assert(fact(origem_braga)),pergunta3(User);
 (Origem == b), assert(fact(origem_porto)),pergunta3(User);
 (Origem == c), assert(fact(origem_lisboa)),pergunta3(User);
 (Origem == d), assert(fact(origem_guimaraes)),pergunta3(User);
 (Origem == e), assert(fact(origem_viseu)),pergunta3(User);
 (Origem == f), assert(fact(origem_coimbra)),pergunta3(User);
 (Origem == g), assert(fact(origem_faro)),pergunta3(User)).

pergunta3(User):- nl, write('Escolha o seu destino: '),nl, nl,
 write('"a." - Braga.'),nl,
 write('"b." - Porto.'),nl,
 write('"c." - Lisboa.'),nl,
 write('"d." - Guimarães.'),nl,
 write('"e." - Viseu.'),nl,
 write('"f." - Coimbra.'),nl,
 write('"g." - Faro.'),nl,
 write(' A sua opcao e : '),read(Destino),(
 (Destino == a), assert(fact(destino_braga)),pergunta4(User);
 (Destino == b), assert(fact(destino_porto)),pergunta4(User);
 (Destino == c), assert(fact(destino_lisboa)),pergunta4(User);
 (Destino == d), assert(fact(destino_guimaraes)),pergunta4(User);
 (Destino == e), assert(fact(destino_viseu)),pergunta4(User);
 (Destino == f), assert(fact(destino_coimbra)),pergunta4(User);
 (Destino == g), assert(fact(destino_faro)),pergunta4(User)).


pergunta4(User):- nl, write(' Qual o seu orcamento para a viagem? '),nl, nl,
 write('"a." - Quero gastar pouco dinheiro'),nl,
 write('"b." - Não tenho um orçamento definido'),nl,
 write('"c." - Posso gastar muito, não me preocupa'),nl,
 write(' A sua opcao e : '),read(Orcamento),(
 (Orcamento == a), assert(fact(gastar_pouco)),pergunta5(User);
 (Orcamento == b), assert(fact(sem_orcamento)),pergunta5(User);
 (Orcamento == c), assert(fact(gastar_muito)),pergunta5(User)).


pergunta5(User):- nl, write('Prente que seja uma viagem mais curta ou mais longa? '),nl, nl,
 write('"a." - Mais curta seria o ideal.'),nl,
 write('"b." - Passo o tempo de viagem ocupado, portanto tanto faz.'),nl,
 write('"c." - Pretendo uma viagem rápida'),nl,
 write(' A sua opcao e : '),read(Duracao),(
 (Duracao == a), assert(fact(viagem_curta)),pergunta6(User);
 (Duracao == b), assert(fact(sem_restricao)),pergunta6(User);
 (Duracao == c), assert(fact(viagem_longa)),pergunta6(User)).


pergunta6(User):- nl, write('Ira necessitar de uma casa de banho a seu dispor?'),nl, nl,
 write('"a." - Sim'),nl,
 write('"b." - Nao'),nl, nl,
 write(' A sua opcao e : '),read(CasaBanho),(
 (CasaBanho == a), assert(fact(casa_de_banho)), nl, final(User);
 (CasaBanho == b), assert(fact(sem_casa_de_banho)), nl, final(User)).

final(User):- nl, demo, nl, write('Obrigado, '), write(User).

resultado(P):- nl, findall(Y,(fact(P),solucao(Y,_,_,_,_,_,LP), member(P,LP)),L), write('resultado:'), nl, write(L), nl. 


%construir um predicado em vez de listar a lista L.%

% P --> Resultado total, todas as opções para o cliente
%  LP --> PERFIS

% Para meter no cabeçalho do excel do RapidMiner:
% origem_braga, origem_porto, origem_lisboa, origem_guimaraes, origem_viseu, origem_coimbra, origem_faro, gastar_pouco, sem_orcamento, gastar_muito, viagem_curta, sem_restricao, viagem_longa, destino_braga, destino_porto, destino_lisboa, destino_guimaraes, destino_viseu, destino_coimbra, destino_faro
%
