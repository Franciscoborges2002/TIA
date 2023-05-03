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

%_____________________________ FORWARD _______________________________

/*
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
   composed_fact( Cond),
   %write("oioi" + Cond + "asdasd" + Concl).             % Condition true?

composed_fact( Cond)  :-
   fact( Cond).                      % Simple fact

composed_fact( Cond1 and Cond2)  :-
    %write(Cond1), nl, write(Cond2),
   composed_fact( Cond1),
   composed_fact( Cond2).            % Both conjuncts true

composed_fact( Cond1 or Cond2)  :-
   composed_fact( Cond1)
   ;
   composed_fact( Cond2).*/

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
   %write('1:'),write(Cond),nl,nl,
   intermedio( Cond).                      % Simple fact

composed_fact( Cond1 and Cond2)  :-
   %write('2:'),write(Cond1),write(Cond2),nl,nl,
   composed_fact( Cond1),
   composed_fact( Cond2).            % Both conjuncts true

composed_fact( Cond1 or Cond2)  :-
   composed_fact( Cond1)
   ;
   composed_fact( Cond2).


if gastar_pouco and viagem_curta then viagemTrabalho.
if gastar_pouco and viagem_longa then viagemGastarPoucoLonga.
%if gastar_pouco and sem_restricao then viagemGastarPouco.

%__GASTAR MUITO__
if gastar_muito and viagem_longa then viagemPasseio.
if gastar_muito and viagem_curta then viagemGastarMuitoCurta.
%if gastar_muito and sem_restricao then viagemGastarMuito.


if casa_de_banho and zona_fumador then casaBanhoFumador.
if casa_de_banho and sem_zona_fumador then casaBanhoSemZonaFumador.

if sem_casa_de_banho and zona_fumador then semCasaBanhoFumador.
if sem_casa_de_banho and sem_zona_fumador then semCasaBanhoSemZonaFumador.

if wifi and mais_ecologico then wifiMaisEcologico.
if sem_wifi and mais_ecologico then semWifiMaisEcologico.


if wifi and menos_ecologico then wifiMenosEcologico.
if sem_wifi and menos_ecologico then semWifiMenosEcologico.


%_________________________ BASE DE DADOS _________________________________

%A usar: gastar_pouco, sem_orcamento, viagem_curta, sem_restricao, casa_de_banho, wifi, naoFumador
%__ORIGEM BRAGA & DESTINO PORTO__
transporte('Origem: Braga, Destino: Porto, Preco: 3€, Transporte: Comboio, Tempo de Viagem: 50 minutos', origem_braga, destino_porto, [viagemTrabalho, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Braga, Destino: Porto, Preco: 14€, Transporte: Autocarro, Tempo de Viagem: 70 minutos', origem_braga, destino_porto, [viagemPasseio, semCasaBanhoSemZonaFumador, wifiMaisEcologico]).
transporte('Origem: Braga, Destino: Porto, Preco: 15€, Transporte: Automovel, Tempo de Viagem: 40 minutos', origem_braga, destino_porto, [viagemTrabalho, semCasaBanhoFumador, semWifiMenosEcologico]).

transporte('Origem: Porto, Destino: Braga, Preco: 3€, Transporte: Comboio, Tempo de Viagem: 50 minutos', origem_porto, destino_braga, [viagemTrabalho, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Porto, Destino: Braga, Preco: 14€, Transporte: Autocarro, Tempo de Viagem: 70 minutos', origem_porto, destino_braga, [viagemPasseio, semCasaBanhoSemZonaFumador, wifiMaisEcologico]).
transporte('Origem: Porto, Destino: Braga, Preco: 15€, Transporte: Automovel, Tempo de Viagem: 40 minutos', origem_porto, destino_braga, [viagemGastarMuitoCurta, semCasaBanhoFumador, semWifiMenosEcologico]).


transporte('Origem: Porto, Destino: Lisboa, Preco: 60€, Transporte: Comboio, Tempo de Viagem: 180 minutos', origem_porto, destino_lisboa, [viagemGastarPoucoLonga, casaBanhoSemZonaFumador, wifiMaisEcologico]).
transporte('Origem: Porto, Destino: Lisboa, Preco: 90€, Transporte: Automovel, Tempo de Viagem: 150 minutos', origem_porto, destino_lisboa, [viagemPasseio, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Porto, Destino: Lisboa, Preco: 130€, Transporte: Aviao, Tempo de Viagem: 120 minutos', origem_porto, destino_lisboa, [viagemGastarMuitoCurta, casaBanhoSemZonaFumador, wifiMenosEcologico]).
transporte('Origem: Porto, Destino: Lisboa, Preco: 25€, Transporte: Autocarro, Tempo de Viagem: 150 minutos', origem_porto, destino_lisboa, [viagemGastarPoucoLonga, casaBanhoSemZonaFumador, wifiMaisEcologico]).

transporte('Origem: Lisboa, Destino: Porto, Preco: 60€, Transporte: Comboio, Tempo de Viagem: 180 minutos', origem_lisboa, destino_porto, [viagemGastarPoucoLonga, casaBanhoSemZonaFumador, wifiMaisEcologico]).
transporte('Origem: Lisboa, Destino: Porto, Preco: 90€, Transporte: Automovel, Tempo de Viagem: 150 minutos', origem_lisboa, destino_porto, [viagemPasseio, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Lisboa, Destino: Porto, Preco: 130€, Transporte: Aviao, Tempo de Viagem: 120 minutos', origem_lisboa, destino_porto, [viagemGastarMuitoCurta, casaBanhoSemZonaFumador, wifiMenosEcologico]).
transporte('Origem: Lisboa, Destino: Porto, Preco: 25€, Transporte: Autocarro, Tempo de Viagem: 150 minutos', origem_lisboa, destino_porto, [viagemGastarPoucoLonga, casaBanhoSemZonaFumador, wifiMaisEcologico]).


transporte('Origem: Lisboa, Destino: Faro, Preco: 80€, Transporte: Comboio, Tempo de Viagem: 240 minutos', origem_lisboa, destino_faro, [viagemGastarPoucoLonga, casaBanhoSemZonaFumador, wifiMaisEcologico]).
transporte('Origem: Lisboa, Destino: Faro, Preco: 150€, Transporte: Automóvel, Tempo de Viagem: 200 minutos', origem_lisboa, destino_faro, [viagemPasseio, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Lisboa, Destino: Faro, Preco: 140€, Transporte: Avião, Tempo de Viagem: 120 minutos', origem_lisboa, destino_faro, [viagemGastarMuitoCurta, casaBanhoSemZonaFumador, wifiMenosEcologico]).
transporte('Origem: Lisboa, Destino: Faro, Preco: 70€, Transporte: Autocarro, Tempo de Viagem: 240 minutos', origem_lisboa, destino_faro, [viagemGastarPoucoLonga, casaBanhoSemZonaFumador, wifiMaisEcologico]).

transporte('Origem: Faro, Destino: Lisboa, Preco: 80€, Transporte: Comboio, Tempo de Viagem: 240 minutos', origem_faro, destino_lisboa, [viagemGastarPoucoLonga, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Faro, Destino: Lisboa, Preco: 150€, Transporte: Automóvel, Tempo de Viagem: 200 minutos', origem_faro, destino_lisboa, [viagemPasseio, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Faro, Destino: Lisboa, Preco: 140€, Transporte: Avião, Tempo de Viagem: 120 minutos', origem_faro, destino_lisboa, [viagemGastarMuitoCurta, casaBanhoSemZonaFumador, wifiMenosEcologico]).
transporte('Origem: Faro, Destino: Lisboa, Preco: 70€, Transporte: Autocarro, Tempo de Viagem: 240 minutos', origem_faro, destino_lisboa, [viagemGastarPoucoLonga, casaBanhoSemZonaFumador, wifiMaisEcologico]).

transporte('Origem: Porto, Destino: Viseu, Preco: 90€, Transporte: Automóvel, Tempo de Viagem: 200 minutos', origem_porto, destino_viseu, [viagemGastarMuitoCurta, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Porto, Destino: Viseu, Preco: 70€, Transporte: Comboio, Tempo de Viagem: 260 minutos', origem_porto, destino_viseu, [viagemGastarPoucoLonga, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Porto, Destino: Viseu, Preco: 60€, Transporte: Autocarro, Tempo de Viagem: 250 minutos', origem_porto, destino_viseu, [viagemGastarPoucoLonga, casaBanhoSemZonaFumador, wifiMaisEcologico]).

transporte('Origem: Viseu, Destino: Porto, Preco: 90€, Transporte: Automóvel, Tempo de Viagem: 200 minutos', origem_viseu, destino_porto, [viagemGastarMuitoCurta, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Viseu, Destino: Porto, Preco: 70€, Transporte: Comboio, Tempo de Viagem: 260 minutos', origem_viseu, destino_porto, [viagemGastarPoucoLonga, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Viseu, Destino: Porto, Preco: 60€, Transporte: Autocarro, Tempo de Viagem: 250 minutos', origem_viseu, destino_porto, [viagemGastarPoucoLonga, casaBanhoSemZonaFumador, wifiMaisEcologico]).

transporte('Origem: Braga, Destino: Guimaraes, Preco: 10€, Transporte: Automóvel, Tempo de Viagem: 20 minutos', origem_braga, destino_guimaraes, [viagemTrabalho, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Braga, Destino: Guimaraes, Preco: 15€, Transporte: Autocarro, Tempo de Viagem: 30 minutos', origem_braga, destino_guimaraes, [viagemPasseio, casaBanhoSemZonaFumador, wifiMaisEcologico]).

transporte('Origem: Guimaraes, Destino: Braga, Preco: 10€, Transporte: Automóvel, Tempo de Viagem: 20 minutos', origem_guimaraes, destino_braga, [viagemTrabalho, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Guimaraes, Destino: Braga, Preco: 15€, Transporte: Autocarro, Tempo de Viagem: 30 minutos', origem_guimaraes, destino_braga, [viagemPasseio, casaBanhoSemZonaFumador, wifiMaisEcologico]).

transporte('Origem: Guimaraes, Destino: Porto, Preco: 14€, Transporte: Automóvel, Tempo de Viagem: 50 minutos', origem_guimaraes, destino_porto, [viagemGastarMuitoCurta, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Guimaraes, Destino: Porto, Preco: 3€, Transporte: Comboio, Tempo de Viagem: 70 minutos', origem_guimaraes, destino_porto, [viagemGastarPoucoLonga, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Guimaraes, Destino: Porto, Preco: 12€, Transporte: Autocarro, Tempo de Viagem: 60 minutos', origem_guimaraes, destino_porto, [viagemPasseio, casaBanhoSemZonaFumador, wifiMaisEcologico]).
transporte('Origem: Guimaraes, Destino: Porto, Preco: 12€, Transporte: Autocarro, Tempo de Viagem: 60 minutos', origem_guimaraes, destino_porto, [viagemGastarMuitoCurta, casaBanhoSemZonaFumador, wifiMaisEcologico]).

transporte('Origem: Porto, Destino: Guimaraes, Preco: 14€, Transporte: Automóvel, Tempo de Viagem: 50 minutos', origem_porto, destino_guimaraes, [viagemGastarMuitoCurta, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Porto, Destino: Guimaraes, Preco: 3€, Transporte: Comboio, Tempo de Viagem: 70 minutos', origem_porto, destino_guimaraes, [viagemGastarPoucoLonga, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Porto, Destino: Guimaraes, Preco: 12€, Transporte: Autocarro, Tempo de Viagem: 60 minutos', origem_porto, destino_guimaraes, [viagemPasseio, casaBanhoSemZonaFumador, wifiMaisEcologico]).
transporte('Origem: Porto, Destino: Guimaraes, Preco: 12€, Transporte: Autocarro, Tempo de Viagem: 60 minutos', origem_porto, destino_guimaraes, [viagemGastarMuitoCurta, casaBanhoSemZonaFumador, wifiMaisEcologico]).

transporte('Origem: Viseu, Destino: Coimbra, Preco: 40€, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_viseu, destino_coimbra, [viagemPasseio, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Viseu, Destino: Coimbra, Preco: 40€, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_viseu, destino_coimbra, [viagemTrabalho, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Viseu, Destino: Coimbra, Preco: 40€, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_viseu, destino_coimbra, [viagemGastarPoucoLonga, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Viseu, Destino: Coimbra, Preco: 40€, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_viseu, destino_coimbra, [viagemGastarMuitoCurta, semCasaBanhoFumador, semWifiMenosEcologico]).

transporte('Origem: Coimbra, Destino: Braga, Preco: 60€, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_coimbra, destino_braga, [viagemPasseio,semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Coimbra, Destino: Braga, Preco: 60€, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_coimbra, destino_braga, [viagemTrabalho,semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Coimbra, Destino: Braga, Preco: 60€, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_coimbra, destino_braga, [viagemGastarPoucoLonga,semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Coimbra, Destino: Braga, Preco: 60€, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_coimbra, destino_braga, [viagemGastarMuitoCurta,semCasaBanhoFumador, semWifiMenosEcologico]).

transporte('Origem: Coimbra, Destino: Lisboa, Preco: 30€, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_coimbra, destino_lisboa, [viagemPasseio, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Coimbra, Destino: Lisboa, Preco: 30€, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_coimbra, destino_lisboa, [viagemTrabalho, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Coimbra, Destino: Lisboa, Preco: 30€, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_coimbra, destino_lisboa, [viagemGastarPoucoLonga, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Coimbra, Destino: Lisboa, Preco: 30€, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_coimbra, destino_lisboa, [viagemGastarMuitoCurta, casaBanhoFumador, wifiMaisEcologico]).

transporte('Origem: Lisboa, Destino: Coimbra, Preco: 30€, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_lisboa, destino_coimbra, [viagemPasseio, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Lisboa, Destino: Coimbra, Preco: 30€, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_lisboa, destino_coimbra, [viagemTrabalho, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Lisboa, Destino: Coimbra, Preco: 30€, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_lisboa, destino_coimbra, [viagemGastarPoucoLonga, casaBanhoFumador, wifiMaisEcologico]).
transporte('Origem: Lisboa, Destino: Coimbra, Preco: 30€, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_lisboa, destino_coimbra, [viagemGastarMuitoCurta, casaBanhoFumador, wifiMaisEcologico]).

transporte('Origem: Braga, Destino: Coimbra, Preco: 60€, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_braga, destino_coimbra, [viagemPasseio, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Braga, Destino: Coimbra, Preco: 60€, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_braga, destino_coimbra, [viagemTrabalho, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Braga, Destino: Coimbra, Preco: 60€, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_braga, destino_coimbra, [viagemGastarPoucoLonga, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Braga, Destino: Coimbra, Preco: 60€, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_braga, destino_coimbra, [viagemGastarMuitoCurta, semCasaBanhoFumador, semWifiMenosEcologico]).

transporte('Origem: Coimbra, Destino: Viseu, Preco: 40€, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_coimbra, destino_viseu, [viagemPasseio, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Coimbra, Destino: Viseu, Preco: 40€, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_coimbra, destino_viseu, [viagemTrabalho, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Coimbra, Destino: Viseu, Preco: 40€, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_coimbra, destino_viseu, [viagemGastarPoucoLonga, semCasaBanhoFumador, semWifiMenosEcologico]).
transporte('Origem: Coimbra, Destino: Viseu, Preco: 40€, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_coimbra, destino_viseu, [viagemGastarMuitoCurta, semCasaBanhoFumador, semWifiMenosEcologico]).



%_________________________ INTERFACE _____________________________________
:-dynamic(fact/1). % definir fact como dinamico
/* :-[backward, forward, bd, baseconhecimento]. */
:- use_module(library(lists)).

iniciar:-retractall(fact(_)), retractall(intermedio(_)), retractall(origem(_)), retractall(destino(_)),write('Bem vindo e Boa sessão!'),nl,nl,perguntaNome().

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
 (Origem == a), assert(origem(origem_braga)),perguntaDestino(User);
 (Origem == b), assert(origem(origem_porto)),perguntaDestino(User);
 (Origem == c), assert(origem(origem_lisboa)),perguntaDestino(User);
 (Origem == d), assert(origem(origem_guimaraes)),perguntaDestino(User);
 (Origem == e), assert(origem(origem_viseu)),perguntaDestino(User);
 (Origem == f), assert(origem(origem_coimbra)),perguntaDestino(User);
 (Origem == g), assert(origem(origem_faro)),perguntaDestino(User)).

/*
*
*PERGUNTA DESTINO
*findall(X, origem(X), Origem) nth0(0,Origem,OrigemVerificar)
*/

perguntaDestino(User):- findall(X, origem(X), Origem), nth0(0,Origem,OrigemRecebida),
   nl, write('Escolha o seu destino: '),nl, nl,
   (OrigemRecebida == 'origem_braga' ->
      (
         write('"a." - Porto.'),nl,
         write('"b." - Lisboa.'),nl,
         write('"c." - Guimarães.'),nl,
         write('"d." - Viseu.'),nl,
         write('"e." - Coimbra.'),nl,
         write('"f." - Faro.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(destino_porto)),perguntaPreco1(User);
            (Destino == b), assert(destino(destino_lisboa)),perguntaPreco1(User);
            (Destino == c), assert(destino(destino_guimaraes)),perguntaPreco1(User);
            (Destino == d), assert(destino(destino_viseu)),perguntaPreco1(User);
            (Destino == e), assert(destino(destino_coimbra)),perguntaPreco1(User);
            (Destino == f), assert(destino(destino_faro)),perguntaPreco1(User)
         )
      )
   ;OrigemRecebida == 'origem_porto' ->
      (
         write('"a." - Braga.'),nl,
         write('"b." - Lisboa.'),nl,
         write('"c." - Guimarães.'),nl,
         write('"d." - Viseu.'),nl,
         write('"e." - Coimbra.'),nl,
         write('"f." - Faro.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(destino_braga)),perguntaPreco1(User);
            (Destino == b), assert(destino(destino_lisboa)),perguntaPreco1(User);
            (Destino == c), assert(destino(destino_guimaraes)),perguntaPreco1(User);
            (Destino == d), assert(destino(destino_viseu)),perguntaPreco1(User);
            (Destino == e), assert(destino(destino_coimbra)),perguntaPreco1(User);
            (Destino == f), assert(destino(destino_faro)),perguntaPreco1(User)
         )
      )
      ;OrigemRecebida == 'origem_lisboa' ->
      (
         write('"a." - Braga.'),nl,
         write('"b." - Porto.'),nl,
         write('"c." - Guimarães.'),nl,
         write('"d." - Viseu.'),nl,
         write('"e." - Coimbra.'),nl,
         write('"f." - Faro.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(destino_braga)),perguntaPreco1(User);
            (Destino == b), assert(destino(destino_porto)),perguntaPreco1(User);
            (Destino == c), assert(destino(destino_guimaraes)),perguntaPreco1(User);
            (Destino == d), assert(destino(destino_viseu)),perguntaPreco1(User);
            (Destino == e), assert(destino(destino_coimbra)),perguntaPreco1(User);
            (Destino == f), assert(destino(destino_faro)),perguntaPreco1(User)
         )
      )
      ;OrigemRecebida == 'origem_guimaraes' ->
      (
         write('"a." - Braga.'),nl,
         write('"b." - Porto.'),nl,
         write('"c." - Lisboa.'),nl,
         write('"d." - Viseu.'),nl,
         write('"e." - Coimbra.'),nl,
         write('"f." - Faro.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(destino_braga)),perguntaPreco1(User);
            (Destino == b), assert(destino(destino_porto)),perguntaPreco1(User);
            (Destino == c), assert(destino(destino_lisboa)),perguntaPreco1(User);
            (Destino == d), assert(destino(destino_viseu)),perguntaPreco1(User);
            (Destino == e), assert(destino(destino_coimbra)),perguntaPreco1(User);
            (Destino == f), assert(destino(destino_faro)),perguntaPreco1(User)
         )
      )
      ;OrigemRecebida == 'origem_viseu' ->
      (
         write('"a." - Braga.'),nl,
         write('"b." - Porto.'),nl,
         write('"c." - Lisboa.'),nl,
         write('"d." - Guimaraes.'),nl,
         write('"e." - Coimbra.'),nl,
         write('"f." - Faro.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(destino_braga)),perguntaPreco1(User);
            (Destino == b), assert(destino(destino_porto)),perguntaPreco1(User);
            (Destino == c), assert(destino(destino_lisboa)),perguntaPreco1(User);
            (Destino == d), assert(destino(destino_guimaraes)),perguntaPreco1(User);
            (Destino == e), assert(destino(destino_coimbra)),perguntaPreco1(User);
            (Destino == f), assert(destino(destino_faro)),perguntaPreco1(User)
         )
      )
      ;OrigemRecebida == 'origem_coimbra' ->
      (
         write('"a." - Braga.'),nl,
         write('"b." - Porto.'),nl,
         write('"c." - Lisboa.'),nl,
         write('"d." - Guimaraes.'),nl,
         write('"e." - Viseu.'),nl,
         write('"f." - Faro.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(destino_braga)),perguntaPreco1(User);
            (Destino == b), assert(destino(destino_porto)),perguntaPreco1(User);
            (Destino == c), assert(destino(destino_lisboa)),perguntaPreco1(User);
            (Destino == d), assert(destino(destino_guimaraes)),perguntaPreco1(User);
            (Destino == e), assert(destino(destino_viseu)),perguntaPreco1(User);
            (Destino == f), assert(destino(destino_faro)),perguntaPreco1(User)
         )
      )
      ;OrigemRecebida == 'origem_faro' ->
      (
         write('"a." - Braga.'),nl,
         write('"b." - Porto.'),nl,
         write('"c." - Lisboa.'),nl,
         write('"d." - Guimaraes.'),nl,
         write('"e." - Viseu.'),nl,
         write('"f." - Coimbra.'),nl,
         write(' A sua opcao e : '),read(Destino),
         (
            (Destino == a), assert(destino(destino_braga)),perguntaPreco1(User);
            (Destino == b), assert(destino(destino_porto)),perguntaPreco1(User);
            (Destino == c), assert(destino(destino_lisboa)),perguntaPreco1(User);
            (Destino == d), assert(destino(destino_guimaraes)),perguntaPreco1(User);
            (Destino == e), assert(destino(destino_viseu)),perguntaPreco1(User);
            (Destino == f), assert(destino(destino_coimbra)),perguntaPreco1(User)
         )
      )
   ).

/* perguntaDestino(User):- nl, write('Escolha o seu destino: '),nl, nl,
 write('"a." - Braga.'),nl,
 write('"b." - Porto.'),nl,
 write('"c." - Lisboa.'),nl,
 write('"d." - Guimarães.'),nl,
 write('"e." - Viseu.'),nl,
 write('"f." - Coimbra.'),nl,
 write('"g." - Faro.'),nl,
 write(' A sua opcao e : '),read(Destino),(
 (Destino == a), assert(destino(destino_braga)),perguntaPreco1(User);
 (Destino == b), assert(destino(destino_porto)),perguntaPreco1(User);
 (Destino == c), assert(destino(destino_lisboa)),perguntaPreco1(User);
 (Destino == d), assert(destino(destino_guimaraes)),perguntaPreco1(User);
 (Destino == e), assert(destino(destino_viseu)),perguntaPreco1(User);
 (Destino == f), assert(destino(destino_coimbra)),perguntaPreco1(User);
 (Destino == g), assert(destino(destino_faro)),perguntaPreco1(User)).
 */

/*
*
*PERGUNTA PRECO
*
*/

perguntaPreco1(User):- nl, write(' Qual o seu orcamento para a viagem? '),nl, nl,
 write('"a." - Quero gastar pouco dinheiro ()'),nl,
 write('"b." - Não tenho um orçamento definido ()'),nl,
 write('"c." - Posso gastar muito, não me preocupa ()'),nl,
 write(' A sua opcao e : '),read(Orcamento),(
 (Orcamento == a), assert(intermedio(gastar_pouco)),perguntaTempo(User);
 (Orcamento == b), assert(intermedio(sem_orcamento)),perguntaTempo(User);
 (Orcamento == c), assert(intermedio(gastar_muito)),perguntaTempo(User)).

/*
*
*PERGUNTA TEMPO
*
*/
perguntaTempo(User):- nl, write('Prente que seja uma viagem mais curta ou mais longa? '),nl, nl,
 write('"a." - Mais curta seria o ideal.'),nl,
 write('"b." - Passo o tempo de viagem ocupado, portanto tanto faz.'),nl,
 write('"c." - Pretendo uma viagem longa para desfrutar.'),nl,
 write(' A sua opcao e : '),read(Duracao),(
 (Duracao == a), assert(intermedio(viagem_curta)),perguntaCasaBanho(User);
 (Duracao == b), assert(intermedio(sem_restricao)),perguntaCasaBanho(User);
 (Duracao == c), assert(intermedio(viagem_longa)),perguntaCasaBanho(User)).

/*
*
*PERGUNTA CASA BANHO
*
*/
perguntaCasaBanho(User):- nl, write('Ira necessitar de uma casa de banho a seu dispor?'),nl, nl,
 write('"a." - Sim'),nl,
 write('"b." - Nao'),nl, 
 write('"c." - Indiferente'),nl,nl,
 write(' A sua opcao e : '),read(CasaBanho),(
 (CasaBanho == a), assert(intermedio(casa_de_banho)), nl, perguntaWifi1(User);
 (CasaBanho == b), assert(intermedio(sem_casa_de_banho)), nl, perguntaWifi1(User);
 (CasaBanho == c), assert(intermedio(indiferente_casa_de_banho)), nl, perguntaWifi1(User)).



/*
*
*PERGUNTA WIFI
*
*/
 perguntaWifi1(User):- nl, write('Gosta de ver series/filmes durante a viagem?'),nl, nl,
 write('"a." - Sim'),nl,
 write('"b." - Nao'),nl,
 write('"c." - Indiferente'),nl, nl,
 write(' A sua opcao e : '),read(Wifi),(
 (Wifi == a), assert(intermedio(wifi)), nl, perguntaFumador1(User);
 (Wifi == b), assert(intermedio(sem_wifi)), nl, perguntaFumador1(User);
 (Wifi == c), assert(intermedio(indiferente_wifi)), nl, perguntaFumador1(User)).

/*
*
*PERGUNTA ZONA FUMADOR
*
*/
perguntaFumador1(User):- nl, write('Pertende fumar durante a viagem?'),nl, nl,
write('"a." - Sim'),nl,
write('"b." - Nao'),nl,
write('"c." - Indiferente'),nl, nl,
write(' A sua opcao e : '),read(ZonaFumador),(
(ZonaFumador == a), assert(intermedio(zona_fumador)), nl, perguntaEcologica(User);
(ZonaFumador == b), assert(intermedio(sem_zona_fumador)), nl, perguntaEcologica(User);
(ZonaFumador == c), assert(intermedio(indiferente_zona_fumador)), nl, perguntaEcologica(User)).

/*
*
*PERGUNTA ECOLOGICA
*
*/
perguntaEcologica(User):- nl, write('Tem preocupacao com os gastos de CO2 da viagem?'),nl, nl,
write('"a." - Sim'),nl,
write('"b." - Nao'),nl,
write('"c." - Indiferente'),nl, nl,
write(' A sua opcao e : '),read(Ecologica),(
(Ecologica == a), assert(intermedio(mais_ecologico)), nl, final(User);
(Ecologica == b), assert(intermedio(menos_ecologico)), nl, final(User);
(Ecologica == c), assert(intermedio(indiferente_ecologico)), nl, final(User)).

%____VERIFICAR LISTAS
all_from_first_in_second(List1, List2) :-
   forall(member(Element,List1), member(Element,List2)).


/*

Corrigir erro, dos indiferentes

*/
%___VERIFICAR ORIGEM
/* verificar_origem_destino(OOrigem, DDestino):-
   findall(X, fact(X), Factos), %pegar em todos os factos registados
   nth0(0, Factos, Origem), %pegar na origem
   nth0(1, Factos, Destino). %pegar no destino */

/* subset([], _).
subset([X|Tail], Y):-
   select(X, Y),
   subset(Tail, Y). */

/*    all_in_list([Head|Tail], List) :-
      member(Head, List),
      subset(Tail, List). */


final(User):- nl, /* findall(X, intermedio(X), Intermedio), write(Intermedio),
nl, findall(X, origem(X), Origem), write(Origem),
nl,findall(X, destino(X), Destino), write(Destino), */
demo, nl, write('Obrigado, '), write(User).


resultado(P):- nl,findall(X, origem(X), Origem),findall(X, destino(X), Destino),findall(X, fact(X), Factos)/*,write(Factos)*/ ,nth0(0,Destino,DestinoVerificar), nth0(0,Origem,OrigemVerificar),
findall(Y,(fact(P),transporte(Y,X,Z,LP), X == OrigemVerificar, Z == DestinoVerificar/* ,nl,nl,write(P) */,ord_subset(LP, Factos)),L), write('resultado:'), nl, write(L), nl. 

teste:- findall(X, fact(X), Factos), nl, write(Factos).
%teste:- findall(X, fact(X), Factos), nth0(0, Factos, Origem),nth0(1, Factos, Destino), write(Origem), write(Destino).