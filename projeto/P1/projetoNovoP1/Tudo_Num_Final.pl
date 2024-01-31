%######################################################################
%██████╗░░█████╗░░█████╗░██╗░░██╗░██╗░░░░░░░██╗░█████╗░██████╗░██████╗░
%██╔══██╗██╔══██╗██╔══██╗██║░██╔╝░██║░░██╗░░██║██╔══██╗██╔══██╗██╔══██╗
%██████╦╝███████║██║░░╚═╝█████═╝░░╚██╗████╗██╔╝███████║██████╔╝██║░░██║
%██╔══██╗██╔══██║██║░░██╗██╔═██╗░░░████╔═████║░██╔══██║██╔══██╗██║░░██║
%██████╦╝██║░░██║╚█████╔╝██║░╚██╗░░╚██╔╝░╚██╔╝░██║░░██║██║░░██║██████╔╝
%╚═════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░
%######################################################################
:-  op( 800, fx, if).
:-  op( 700, xfx, then).
:-  op( 300, xfy, or).
:-  op( 200, xfy, and).

demo( Q)  :-
   fact( Q).

demo( Q)  :-
   if Condition then Q,
   demo( Condition).

demo( Q1 and Q2)  :-
   demo( Q1),
   demo( Q2).

demo( Q1 or Q2)  :-
   demo( Q1)
   ;
   demo( Q2).


%##############################################################
%███████╗░█████╗░██████╗░░██╗░░░░░░░██╗░█████╗░██████╗░██████╗░
%██╔════╝██╔══██╗██╔══██╗░██║░░██╗░░██║██╔══██╗██╔══██╗██╔══██╗
%█████╗░░██║░░██║██████╔╝░╚██╗████╗██╔╝███████║██████╔╝██║░░██║
%██╔══╝░░██║░░██║██╔══██╗░░████╔═████║░██╔══██║██╔══██╗██║░░██║
%██║░░░░░╚█████╔╝██║░░██║░░╚██╔╝░╚██╔╝░██║░░██║██║░░██║██████╔╝
%╚═╝░░░░░░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░
%##############################################################

   demo:- new_derived_fact( P),             % A new fact
   !,
   assert( fact( P)),
   demo.                           % Continue
demo:-nl.          % All facts derived

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

%#######################################################
%░██████╗██╗░██████╗████████╗███████╗███╗░░░███╗░█████╗░
%██╔════╝██║██╔════╝╚══██╔══╝██╔════╝████╗░████║██╔══██╗
%╚█████╗░██║╚█████╗░░░░██║░░░█████╗░░██╔████╔██║███████║
%░╚═══██╗██║░╚═══██╗░░░██║░░░██╔══╝░░██║╚██╔╝██║██╔══██║
%██████╔╝██║██████╔╝░░░██║░░░███████╗██║░╚═╝░██║██║░░██║
%╚═════╝░╚═╝╚═════╝░░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝╚═╝░░╚═╝
%#########################################################################
%██╗███╗░░██╗███████╗███████╗██████╗░███████╗███╗░░██╗░█████╗░██╗░█████╗░
%██║████╗░██║██╔════╝██╔════╝██╔══██╗██╔════╝████╗░██║██╔══██╗██║██╔══██╗
%██║██╔██╗██║█████╗░░█████╗░░██████╔╝█████╗░░██╔██╗██║██║░░╚═╝██║███████║
%██║██║╚████║██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██║╚████║██║░░██╗██║██╔══██║
%██║██║░╚███║██║░░░░░███████╗██║░░██║███████╗██║░╚███║╚█████╔╝██║██║░░██║
%╚═╝╚═╝░░╚══╝╚═╝░░░░░╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚══╝░╚════╝░╚═╝╚═╝░░╚═╝
%########################################################################
if gastar_pouco and viagem_curta then viagemTrabalho.
if gastar_pouco and viagem_longa then viagemGastarPoucoLonga.
if gastar_muito and viagem_longa then viagemPasseio.
if gastar_muito and viagem_curta then viagemGastarMuitoCurta.
if casa_de_banho and zona_fumador then casaBanhoFumador.
if casa_de_banho and sem_zona_fumador then casaBanhoSemZonaFumador.
if sem_casa_de_banho and zona_fumador then semCasaBanhoFumador.
if sem_casa_de_banho and sem_zona_fumador then semCasaBanhoSemZonaFumador.
if wifi and mais_ecologico then wifiMaisEcologico.
if sem_wifi and mais_ecologico then semWifiMaisEcologico.
if wifi and menos_ecologico then wifiMenosEcologico.
if sem_wifi and menos_ecologico then semWifiMenosEcologico.
%Junção de Perguntas Intermédio%
if viagemTrabalho and casaBanhoFumador then viagemTrabalhoCasaBanhoFumador.
if viagemTrabalho and casaBanhoSemZonaFumador then viagemTrabalhoCasaBanhoSemZonaFumador.
if viagemTrabalho and semCasaBanhoFumador then viagemTrabalhoSemCasaBanhoFumador.
if viagemTrabalho and semCasaBanhoSemZonaFumador then viagemTrabalhoSemCasaBanhoSemZonaFumador.
if viagemGastarPoucoLonga and casaBanhoFumador then viagemGastarPoucoLongaCasaBanhoFumador.
if viagemGastarPoucoLonga and casaBanhoSemZonaFumador then viagemGastarPoucoLongaCasaBanhoSemZonaFumador.
if viagemGastarPoucoLonga and semCasaBanhoFumador then viagemGastarPoucoLongaSemCasaBanhoFumador.
if viagemGastarPoucoLonga and semCasaBanhoSemZonaFumador then viagemGastarPoucoLongaSemCasaBanhoSemZonaFumador.
if viagemPasseio and casaBanhoFumador then viagemPasseioCasaBanhoFumador.
if viagemPasseio and casaBanhoSemZonaFumador then viagemPasseioCasaBanhoSemZonaFumador.
if viagemPasseio and semCasaBanhoFumador then viagemPasseioSemCasaBanhoFumador.
if viagemPasseio and semCasaBanhoSemZonaFumador then viagemPasseioSemCasaBanhoSemZonaFumador.
if viagemGastarMuitoCurta and casaBanhoFumador then viagemGastarMuitoCurtaCasaBanhoFumador.
if viagemGastarMuitoCurta and casaBanhoSemZonaFumador then viagemGastarMuitoCurtaCasaBanhoSemZonaFumador.
if viagemGastarMuitoCurta and semCasaBanhoFumador then viagemGastarMuitoCurtaSemCasaBanhoFumador.
if viagemGastarMuitoCurta and semCasaBanhoSemZonaFumador then viagemGastarMuitoCurtaSemCasaBanhoSemZonaFumador.
%FINAIS
if viagemTrabalhoCasaBanhoFumador and wifiMaisEcologico then final:trabalhoCasaBanhoFumadorWifiEcologico.
if viagemTrabalhoCasaBanhoFumador and semWifiMaisEcologico then final:trabalhoCasaBanhoFumadorSemWifiEcologico.
if viagemTrabalhoCasaBanhoFumador and wifiMenosEcologico then final:trabalhoCasaBanhoFumadorWifiMenosEcologico.
if viagemTrabalhoCasaBanhoFumador and semWifiMenosEcologico then final:trabalhoCasaBanhoFumadorSemWifiMenosEcologico.
if viagemTrabalhoCasaBanhoSemZonaFumador and wifiMaisEcologico then final:trabalhoCasaBanhoNaoFumadorWifiEcologico.
if viagemTrabalhoCasaBanhoSemZonaFumador and semWifiMaisEcologico then final:trabalhoCasaBanhoNaoFumadorSemWifiEcologico.
if viagemTrabalhoCasaBanhoSemZonaFumador and wifiMenosEcologico then final:trabalhoCasaBanhoNaoFumadorWifiMenosEcologico.
if viagemTrabalhoCasaBanhoSemZonaFumador and semWifiMenosEcologico then final:trabalhoCasaBanhoNaoFumadorSemWifiMenosEcologico.
if viagemTrabalhoSemCasaBanhoFumador and wifiMaisEcologico then final:trabalhoSemCasaBanhoFumadorWifiEcologico.
if viagemTrabalhoSemCasaBanhoFumador and semWifiMaisEcologico then final:trabalhoSemCasaBanhoFumadorSemWifiEcologico.
if viagemTrabalhoSemCasaBanhoFumador and wifiMenosEcologico then final:trabalhoSemCasaBanhoFumadorWifiMenosEcologico.
if viagemTrabalhoSemCasaBanhoFumador and semWifiMenosEcologico then final:trabalhoSemCasaBanhoFumadorSemWifiMenosEcologico.
if viagemTrabalhoSemCasaBanhoSemZonaFumador and wifiMaisEcologico then final:trabalhoSemCasaBanhoNaoFumadorWifiEcologico.
if viagemTrabalhoSemCasaBanhoSemZonaFumador and semWifiMaisEcologico then final:trabalhoSemCasaBanhoNaoFumadorSemWifiEcologico.
if viagemTrabalhoSemCasaBanhoSemZonaFumador and wifiMenosEcologico then final:trabalhoSemCasaBanhoNaoFumadorWifiMenosEcologico.
if viagemTrabalhoSemCasaBanhoSemZonaFumador and semWifiMenosEcologico then final:trabalhoSemCasaBanhoNaoFumadorSemWifiMenosEcologico.
if viagemGastarPoucoLongaCasaBanhoFumador and wifiMaisEcologico then final:gastarPoucoLongaCasaBanhoFumadorWifiEcologico.
if viagemGastarPoucoLongaCasaBanhoFumador and semWifiMaisEcologico then final:gastarPoucoLongaCasaBanhoFumadorSemWifiEcologico.
if viagemGastarPoucoLongaCasaBanhoFumador and wifiMenosEcologico then final:gastarPoucoLongaCasaBanhoFumadorWifiMenosEcologico.
if viagemGastarPoucoLongaCasaBanhoFumador and semWifiMenosEcologico then final:gastarPoucoLongaCasaBanhoFumadorSemWifiMenosEcologico.
if viagemGastarPoucoLongaCasaBanhoSemZonaFumador and wifiMaisEcologico then final:gastarPoucoLongaCasaBanhoNaoFumadorWifiEcologico.
if viagemGastarPoucoLongaCasaBanhoSemZonaFumador and semWifiMaisEcologico then final:gastarPoucoLongaCasaBanhoNaoFumadorSemWifiEcologico.
if viagemGastarPoucoLongaCasaBanhoSemZonaFumador and wifiMenosEcologico then final:gastarPoucoLongaCasaBanhoNaoFumadorWifiMenosEcologico.
if viagemGastarPoucoLongaCasaBanhoSemZonaFumador and semWifiMenosEcologico then final:gastarPoucoLongaCasaBanhoNaoFumadorSemWifiMenosEcologico.
if viagemGastarPoucoLongaSemCasaBanhoFumador and wifiMaisEcologico then final:gastarPoucoLongaSemCasaBanhoFumadorWifiEcologico.
if viagemGastarPoucoLongaSemCasaBanhoFumador and semWifiMaisEcologico then final:gastarPoucoLongaSemCasaBanhoFumadorSemWifiEcologico.
if viagemGastarPoucoLongaSemCasaBanhoFumador and wifiMenosEcologico then final:gastarPoucoLongaSemCasaBanhoFumadorWifiMenosEcologico.
if viagemGastarPoucoLongaSemCasaBanhoFumador and semWifiMenosEcologico then final:gastarPoucoLongaSemCasaBanhoFumadorSemWifiMenosEcologico.
if viagemGastarPoucoLongaSemCasaBanhoSemZonaFumador and wifiMaisEcologico then final:gastarPoucoLongaSemCasaBanhoNaoFumadorWifiEcologico.
if viagemGastarPoucoLongaSemCasaBanhoSemZonaFumador and semWifiMaisEcologico then final:gastarPoucoLongaSemCasaBanhoNaoFumadorSemWifiEcologico.
if viagemGastarPoucoLongaSemCasaBanhoSemZonaFumador and wifiMenosEcologico then final:gastarPoucoLongaSemCasaBanhoNaoFumadorWifiMenosEcologico.
if viagemGastarPoucoLongaSemCasaBanhoSemZonaFumador and semWifiMenosEcologico then final:gastarPoucoLongaSemCasaBanhoNaoFumadorSemWifiMenosEcologico.
if viagemPasseioCasaBanhoFumador and wifiMaisEcologico then final:passeioCasaBanhoFumadorWifiEcologico.
if viagemPasseioCasaBanhoFumador and semWifiMaisEcologico then final:passeioCasaBanhoFumadorSemWifiEcologico.
if viagemPasseioCasaBanhoFumador and wifiMenosEcologico then final:passeioCasaBanhoFumadorWifiMenosEcologico.
if viagemPasseioCasaBanhoFumador and semWifiMenosEcologico then final:passeioCasaBanhoFumadorSemWifiMenosEcologico.
if viagemPasseioCasaBanhoSemZonaFumador and wifiMaisEcologico then final:passeioCasaBanhoNaoFumadorWifiEcologico.
if viagemPasseioCasaBanhoSemZonaFumador and semWifiMaisEcologico then final:passeioCasaBanhoNaoFumadorSemWifiEcologico.
if viagemPasseioCasaBanhoSemZonaFumador and wifiMenosEcologico then final:passeioCasaBanhoNaoFumadorWifiMenosEcologico.
if viagemPasseioCasaBanhoSemZonaFumador and semWifiMenosEcologico then final:passeioCasaBanhoNaoFumadorSemWifiMenosEcologico.
if viagemPasseioSemCasaBanhoFumador and wifiMaisEcologico then final:passeioSemCasaBanhoFumadorWifiEcologico.
if viagemPasseioSemCasaBanhoFumador and semWifiMaisEcologico then final:passeioSemCasaBanhoFumadorSemWifiEcologico.
if viagemPasseioSemCasaBanhoFumador and wifiMenosEcologico then final:passeioSemCasaBanhoFumadorWifiMenosEcologico.
if viagemPasseioSemCasaBanhoFumador and semWifiMenosEcologico then final:passeioSemCasaBanhoFumadorSemWifiMenosEcologico.
if viagemPasseioSemCasaBanhoSemZonaFumador and wifiMaisEcologico then final:passeioSemCasaBanhoNaoFumadorWifiEcologico.
if viagemPasseioSemCasaBanhoSemZonaFumador and semWifiMaisEcologico then final:passeioSemCasaBanhoNaoFumadorSemWifiEcologico.
if viagemPasseioSemCasaBanhoSemZonaFumador and wifiMenosEcologico then final:passeioSemCasaBanhoNaoFumadorWifiMenosEcologico.
if viagemPasseioSemCasaBanhoSemZonaFumador and semWifiMenosEcologico then final:passeioSemCasaBanhoNaoFumadorSemWifiMenosEcologico.
if viagemGastarMuitoCurtaCasaBanhoFumador and wifiMaisEcologico then final:gastarMuitoCurtaCasaBanhoFumadorWifiEcologico.
if viagemGastarMuitoCurtaCasaBanhoFumador and semWifiMaisEcologico then final:gastarMuitoCurtaCasaBanhoFumadorSemWifiEcologico.
if viagemGastarMuitoCurtaCasaBanhoFumador and wifiMenosEcologico then final:gastarMuitoCurtaCasaBanhoFumadorWifiMenosEcologico.
if viagemGastarMuitoCurtaCasaBanhoFumador and semWifiMenosEcologico then final:gastarMuitoCurtaCasaBanhoFumadorSemWifiMenosEcologico.
if viagemGastarMuitoCurtaCasaBanhoSemZonaFumador and wifiMaisEcologico then final:gastarMuitoCurtaCasaBanhoSemZonaFumadorWifiEcologico.
if viagemGastarMuitoCurtaCasaBanhoSemZonaFumador and semWifiMaisEcologico then final:gastarMuitoCurtaCasaBanhoSemZonaFumadorSemWifiEcologico.
if viagemGastarMuitoCurtaCasaBanhoSemZonaFumador and wifiMenosEcologico then final:gastarMuitoCurtaCasaBanhoSemZonaFumadorWifiMenosEcologico.
if viagemGastarMuitoCurtaCasaBanhoSemZonaFumador and semWifiMenosEcologico then final:gastarMuitoCurtaCasaBanhoSemZonaFumadorSemWifiMenosEcologico.
if viagemGastarMuitoCurtaSemCasaBanhoFumador and wifiMaisEcologico then final:gastarMuitoCurtaSemCasaBanhoFumadorWifiEcologico.
if viagemGastarMuitoCurtaSemCasaBanhoFumador and semWifiMaisEcologico then final:gastarMuitoCurtaSemCasaBanhoFumadorSemWifiEcologico.
if viagemGastarMuitoCurtaSemCasaBanhoFumador and wifiMenosEcologico then final:gastarMuitoCurtaSemCasaBanhoFumadorWifiMenosEcologico.
if viagemGastarMuitoCurtaSemCasaBanhoFumador and semWifiMenosEcologico then final:gastarMuitoCurtaSemCasaBanhoFumadorSemWifiMenosEcologico.
if viagemGastarMuitoCurtaSemCasaBanhoSemZonaFumador and wifiMaisEcologico then final:gastarMuitoCurtaSemCasaBanhoSemZonaFumadorWifiEcologico.
if viagemGastarMuitoCurtaSemCasaBanhoSemZonaFumador and semWifiMaisEcologico then final:gastarMuitoCurtaSemCasaBanhoSemZonaFumadorSemWifiEcologico.
if viagemGastarMuitoCurtaSemCasaBanhoSemZonaFumador and wifiMenosEcologico then final:gastarMuitoCurtaSemCasaBanhoSemZonaFumadorWifiMenosEcologico.
if viagemGastarMuitoCurtaSemCasaBanhoSemZonaFumador and semWifiMenosEcologico then final:gastarMuitoCurtaSemCasaBanhoSemZonaFumadorSemWifiMenosEcologico.


%############################################################################################
%██████╗░░█████╗░░██████╗███████╗  ██████╗░███████╗  ██████╗░░█████╗░██████╗░░█████╗░░██████╗
%██╔══██╗██╔══██╗██╔════╝██╔════╝  ██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝
%██████╦╝███████║╚█████╗░█████╗░░  ██║░░██║█████╗░░  ██║░░██║███████║██║░░██║██║░░██║╚█████╗░
%██╔══██╗██╔══██║░╚═══██╗██╔══╝░░  ██║░░██║██╔══╝░░  ██║░░██║██╔══██║██║░░██║██║░░██║░╚═══██╗
%██████╦╝██║░░██║██████╔╝███████╗  ██████╔╝███████╗  ██████╔╝██║░░██║██████╔╝╚█████╔╝██████╔╝
%╚═════╝░╚═╝░░╚═╝╚═════╝░╚══════╝  ╚═════╝░╚══════╝  ╚═════╝░╚═╝░░╚═╝╚═════╝░░╚════╝░╚═════╝░
%############################################################################################

%__ORIGEM BRAGA & DESTINO PORTO__
transporte('Origem: Braga, Destino: Porto, Preco: 3 euros, Transporte: Comboio, Tempo de Viagem: 50 minutos', origem_braga, destino_porto, [trabalhoCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Braga, Destino: Porto, Preco: 14 euros, Transporte: Autocarro, Tempo de Viagem: 70 minutos', origem_braga, destino_porto, [passeioSemCasaBanhoNaoFumadorWifiEcologico]).
transporte('Origem: Braga, Destino: Porto, Preco: 15 euros, Transporte: Automovel, Tempo de Viagem: 40 minutos', origem_braga, destino_porto, [trabalhoCasaBanhoFumadorSemWifiMenosEcologico]).

transporte('Origem: Porto, Destino: Braga, Preco: 3 euros, Transporte: Comboio, Tempo de Viagem: 50 minutos', origem_porto, destino_braga, [trabalhoCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Porto, Destino: Braga, Preco: 14 euros, Transporte: Autocarro, Tempo de Viagem: 70 minutos', origem_porto, destino_braga, [passeioSemCasaBanhoNaoFumadorWifiEcologico]).
transporte('Origem: Porto, Destino: Braga, Preco: 15 euros, Transporte: Automovel, Tempo de Viagem: 40 minutos', origem_porto, destino_braga, [gastarMuitoCurtaSemCasaBanhoFumadorSemWifiMenosEcologico]).


transporte('Origem: Porto, Destino: Lisboa, Preco: 60 euros, Transporte: Comboio, Tempo de Viagem: 180 minutos', origem_porto, destino_lisboa, [gastarPoucoLongaCasaBanhoNaoFumadorWifiEcologico]).
transporte('Origem: Porto, Destino: Lisboa, Preco: 90 euros, Transporte: Automovel, Tempo de Viagem: 150 minutos', origem_porto, destino_lisboa, [passeioSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Porto, Destino: Lisboa, Preco: 130 euros, Transporte: Aviao, Tempo de Viagem: 120 minutos', origem_porto, destino_lisboa, [gastarMuitoCurtaCasaBanhoSemZonaFumadorSemWifiMenosEcologico]).
transporte('Origem: Porto, Destino: Lisboa, Preco: 25 euros, Transporte: Autocarro, Tempo de Viagem: 150 minutos', origem_porto, destino_lisboa, [gastarPoucoLongaCasaBanhoNaoFumadorWifiEcologico]).

transporte('Origem: Lisboa, Destino: Porto, Preco: 60 euros, Transporte: Comboio, Tempo de Viagem: 180 minutos', origem_lisboa, destino_porto, [gastarPoucoLongaCasaBanhoNaoFumadorWifiEcologico]).
transporte('Origem: Lisboa, Destino: Porto, Preco: 90 euros, Transporte: Automovel, Tempo de Viagem: 150 minutos', origem_lisboa, destino_porto, [passeioSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Lisboa, Destino: Porto, Preco: 130 euros, Transporte: Aviao, Tempo de Viagem: 120 minutos', origem_lisboa, destino_porto, [gastarMuitoCurtaCasaBanhoSemZonaFumadorSemWifiMenosEcologico]).
transporte('Origem: Lisboa, Destino: Porto, Preco: 25 euros, Transporte: Autocarro, Tempo de Viagem: 150 minutos', origem_lisboa, destino_porto, [gastarPoucoLongaCasaBanhoNaoFumadorWifiEcologico]).


transporte('Origem: Lisboa, Destino: Faro, Preco: 80 euros, Transporte: Comboio, Tempo de Viagem: 240 minutos', origem_lisboa, destino_faro, [gastarPoucoLongaCasaBanhoNaoFumadorWifiEcologico]).
transporte('Origem: Lisboa, Destino: Faro, Preco: 150 euros, Transporte: Automóvel, Tempo de Viagem: 200 minutos', origem_lisboa, destino_faro, [passeioSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Lisboa, Destino: Faro, Preco: 140 euros, Transporte: Avião, Tempo de Viagem: 120 minutos', origem_lisboa, destino_faro, [gastarMuitoCurtaCasaBanhoSemZonaFumadorSemWifiMenosEcologico]).
transporte('Origem: Lisboa, Destino: Faro, Preco: 70 euros, Transporte: Autocarro, Tempo de Viagem: 240 minutos', origem_lisboa, destino_faro, [gastarPoucoLongaCasaBanhoNaoFumadorWifiEcologico]).

transporte('Origem: Faro, Destino: Lisboa, Preco: 80 euros, Transporte: Comboio, Tempo de Viagem: 240 minutos', origem_faro, destino_lisboa, [gastarPoucoLongaCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Faro, Destino: Lisboa, Preco: 150 euros, Transporte: Automóvel, Tempo de Viagem: 200 minutos', origem_faro, destino_lisboa, [passeioSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Faro, Destino: Lisboa, Preco: 140 euros, Transporte: Avião, Tempo de Viagem: 120 minutos', origem_faro, destino_lisboa, [gastarMuitoCurtaCasaBanhoSemZonaFumadorSemWifiMenosEcologico]).
transporte('Origem: Faro, Destino: Lisboa, Preco: 70 euros, Transporte: Autocarro, Tempo de Viagem: 240 minutos', origem_faro, destino_lisboa, [gastarPoucoLongaCasaBanhoNaoFumadorWifiEcologico]).

transporte('Origem: Porto, Destino: Viseu, Preco: 90 euros, Transporte: Automóvel, Tempo de Viagem: 200 minutos', origem_porto, destino_viseu, [gastarMuitoCurtaSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Porto, Destino: Viseu, Preco: 70 euros, Transporte: Comboio, Tempo de Viagem: 260 minutos', origem_porto, destino_viseu, [gastarPoucoLongaCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Porto, Destino: Viseu, Preco: 60 euros, Transporte: Autocarro, Tempo de Viagem: 250 minutos', origem_porto, destino_viseu, [gastarPoucoLongaCasaBanhoNaoFumadorWifiEcologico]).

transporte('Origem: Viseu, Destino: Porto, Preco: 90 euros, Transporte: Automóvel, Tempo de Viagem: 200 minutos', origem_viseu, destino_porto, [gastarMuitoCurtaSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Viseu, Destino: Porto, Preco: 70 euros, Transporte: Comboio, Tempo de Viagem: 260 minutos', origem_viseu, destino_porto, [gastarPoucoLongaCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Viseu, Destino: Porto, Preco: 60 euros, Transporte: Autocarro, Tempo de Viagem: 250 minutos', origem_viseu, destino_porto, [gastarPoucoLongaCasaBanhoNaoFumadorWifiEcologico]).

transporte('Origem: Braga, Destino: Guimaraes, Preco: 10 euros, Transporte: Automóvel, Tempo de Viagem: 20 minutos', origem_braga, destino_guimaraes, [trabalhoSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Braga, Destino: Guimaraes, Preco: 15 euros, Transporte: Autocarro, Tempo de Viagem: 30 minutos', origem_braga, destino_guimaraes, [passeioCasaBanhoNaoFumadorWifiEcologico]).

transporte('Origem: Guimaraes, Destino: Braga, Preco: 10 euros, Transporte: Automóvel, Tempo de Viagem: 20 minutos', origem_guimaraes, destino_braga, [trabalhoSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Guimaraes, Destino: Braga, Preco: 15 euros, Transporte: Autocarro, Tempo de Viagem: 30 minutos', origem_guimaraes, destino_braga, [passeioCasaBanhoNaoFumadorWifiEcologico]).

transporte('Origem: Guimaraes, Destino: Porto, Preco: 14 euros, Transporte: Automóvel, Tempo de Viagem: 50 minutos', origem_guimaraes, destino_porto, [gastarMuitoCurtaSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Guimaraes, Destino: Porto, Preco: 3 euros, Transporte: Comboio, Tempo de Viagem: 70 minutos', origem_guimaraes, destino_porto, [gastarPoucoLongaCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Guimaraes, Destino: Porto, Preco: 12 euros, Transporte: Autocarro, Tempo de Viagem: 60 minutos', origem_guimaraes, destino_porto, [passeioCasaBanhoNaoFumadorWifiEcologico]).
transporte('Origem: Guimaraes, Destino: Porto, Preco: 12 euros, Transporte: Autocarro, Tempo de Viagem: 60 minutos', origem_guimaraes, destino_porto, [gastarMuitoCurtaCasaBanhoSemZonaFumadorWifiEcologico]).

transporte('Origem: Porto, Destino: Guimaraes, Preco: 14 euros, Transporte: Automóvel, Tempo de Viagem: 50 minutos', origem_porto, destino_guimaraes, [gastarMuitoCurtaSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Porto, Destino: Guimaraes, Preco: 3 euros, Transporte: Comboio, Tempo de Viagem: 70 minutos', origem_porto, destino_guimaraes, [gastarPoucoLongaCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Porto, Destino: Guimaraes, Preco: 12 euros, Transporte: Autocarro, Tempo de Viagem: 60 minutos', origem_porto, destino_guimaraes, [passeioCasaBanhoNaoFumadorWifiEcologico]).
transporte('Origem: Porto, Destino: Guimaraes, Preco: 12 euros, Transporte: Autocarro, Tempo de Viagem: 60 minutos', origem_porto, destino_guimaraes, [gastarMuitoCurtaCasaBanhoSemZonaFumadorWifiEcologico]).

transporte('Origem: Viseu, Destino: Coimbra, Preco: 40 euros, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_viseu, destino_coimbra, [passeioSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Viseu, Destino: Coimbra, Preco: 40 euros, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_viseu, destino_coimbra, [trabalhoSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Viseu, Destino: Coimbra, Preco: 40 euros, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_viseu, destino_coimbra, [gastarPoucoLongaSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Viseu, Destino: Coimbra, Preco: 40 euros, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_viseu, destino_coimbra, [gastarMuitoCurtaSemCasaBanhoFumadorSemWifiMenosEcologico]).

transporte('Origem: Coimbra, Destino: Braga, Preco: 60 euros, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_coimbra, destino_braga, [passeioSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Coimbra, Destino: Braga, Preco: 60 euros, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_coimbra, destino_braga, [trabalhoSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Coimbra, Destino: Braga, Preco: 60 euros, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_coimbra, destino_braga, [gastarPoucoLongaSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Coimbra, Destino: Braga, Preco: 60 euros, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_coimbra, destino_braga, [gastarMuitoCurtaSemCasaBanhoFumadorSemWifiMenosEcologico]).

transporte('Origem: Coimbra, Destino: Lisboa, Preco: 30 euros, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_coimbra, destino_lisboa, [passeioCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Coimbra, Destino: Lisboa, Preco: 30 euros, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_coimbra, destino_lisboa, [trabalhoCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Coimbra, Destino: Lisboa, Preco: 30 euros, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_coimbra, destino_lisboa, [gastarPoucoLongaCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Coimbra, Destino: Lisboa, Preco: 30 euros, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_coimbra, destino_lisboa, [gastarMuitoCurtaCasaBanhoFumadorWifiEcologico]).

transporte('Origem: Lisboa, Destino: Coimbra, Preco: 30 euros, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_lisboa, destino_coimbra, [passeioCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Lisboa, Destino: Coimbra, Preco: 30 euros, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_lisboa, destino_coimbra, [trabalhoCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Lisboa, Destino: Coimbra, Preco: 30 euros, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_lisboa, destino_coimbra, [gastarPoucoLongaCasaBanhoFumadorWifiEcologico]).
transporte('Origem: Lisboa, Destino: Coimbra, Preco: 30 euros, Transporte: Comboio, Tempo de Viagem: 120 minutos', origem_lisboa, destino_coimbra, [gastarMuitoCurtaCasaBanhoFumadorWifiEcologico]).

transporte('Origem: Braga, Destino: Coimbra, Preco: 60 euros, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_braga, destino_coimbra, [passeioSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Braga, Destino: Coimbra, Preco: 60 euros, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_braga, destino_coimbra, [trabalhoSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Braga, Destino: Coimbra, Preco: 60 euros, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_braga, destino_coimbra, [gastarPoucoLongaSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Braga, Destino: Coimbra, Preco: 60 euros, Transporte: Automóvel, Tempo de Viagem: 90 minutos', origem_braga, destino_coimbra, [gastarMuitoCurtaSemCasaBanhoFumadorSemWifiMenosEcologico]).

transporte('Origem: Coimbra, Destino: Viseu, Preco: 40 euros, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_coimbra, destino_viseu, [passeioSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Coimbra, Destino: Viseu, Preco: 40 euros, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_coimbra, destino_viseu, [trabalhoSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Coimbra, Destino: Viseu, Preco: 40 euros, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_coimbra, destino_viseu, [gastarPoucoLongaSemCasaBanhoFumadorSemWifiMenosEcologico]).
transporte('Origem: Coimbra, Destino: Viseu, Preco: 40 euros, Transporte: Automóvel, Tempo de Viagem: 100 minutos', origem_coimbra, destino_viseu, [gastarMuitoCurtaSemCasaBanhoFumadorSemWifiMenosEcologico]).

%#####################################################################
%██╗███╗░░██╗████████╗███████╗██████╗░███████╗░█████╗░░█████╗░███████╗
%██║████╗░██║╚══██╔══╝██╔════╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔════╝
%██║██╔██╗██║░░░██║░░░█████╗░░██████╔╝█████╗░░███████║██║░░╚═╝█████╗░░
%██║██║╚████║░░░██║░░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║██║░░██╗██╔══╝░░
%██║██║░╚███║░░░██║░░░███████╗██║░░██║██║░░░░░██║░░██║╚█████╔╝███████╗
%╚═╝╚═╝░░╚══╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝╚═╝░░░░░╚═╝░░╚═╝░╚════╝░╚══════╝
%#####################################################################

:-dynamic(fact/1). 

iniciar:-retractall(fact(_)), retractall(origem(_)), retractall(destino(_)),write('Bem vindo e Boa sessão!'),nl,nl,perguntaNome().

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
*
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
 write('"c." - Pretendo uma viagem longa para desfrutar.'),nl,
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
 write('"b." - Nao'),nl,nl,
 write(' A sua opcao e : '),read(CasaBanho),(
 (CasaBanho == a), assert(fact(casa_de_banho)), nl, perguntaWifi(User);
 (CasaBanho == b), assert(fact(sem_casa_de_banho)), nl, perguntaWifi(User)).

/*
*
*PERGUNTA WIFI
*
*/
 perguntaWifi(User):- nl, write('Gosta de ver series/filmes durante a viagem?'),nl, nl,
 write('"a." - Sim'),nl,
 write('"b." - Nao'),nl,nl,
 write(' A sua opcao e : '),read(Wifi),(
 (Wifi == a), assert(fact(wifi)), nl, perguntaFumador(User);
 (Wifi == b), assert(fact(sem_wifi)), nl, perguntaFumador(User)).

/*
*
*PERGUNTA ZONA FUMADOR
*
*/
perguntaFumador(User):- nl, write('Pertende fumar durante a viagem?'),nl, nl,
write('"a." - Sim'),nl,
write('"b." - Nao'),nl,nl,
write(' A sua opcao e : '),read(ZonaFumador),(
(ZonaFumador == a), assert(fact(zona_fumador)), nl, perguntaEcologica(User);
(ZonaFumador == b), assert(fact(sem_zona_fumador)), nl, perguntaEcologica(User)).

/*
*
*PERGUNTA ECOLOGICA
*
*/
perguntaEcologica(User):- nl, write('Tem preocupacao com os gastos de CO2 da viagem?'),nl, nl,
write('"a." - Sim'),nl,
write('"b." - Nao'),nl,nl,
write(' A sua opcao e : '),read(Ecologica),(
(Ecologica == a), assert(fact(mais_ecologico)), nl, final(User);
(Ecologica == b), assert(fact(menos_ecologico)), nl, final(User)).

subset([], []).
subset([X|Xs], [X|Ys]) :- subset(Xs, Ys).
subset(Xs, [_|Ys]) :- subset(Xs, Ys).

final(User):- nl, demo, nl, resultado,nl,write('Obrigado, '), write(User), write('!').

resultado:- findall(O, origem(O), Origem),findall(D, destino(D), Destino),nth0(0,Destino,DestinoVerificar), nth0(0,Origem,OrigemVerificar),findall(transporte(X,Y,Z,W), (transporte(X,Y,Z,W), Y == OrigemVerificar, Z == DestinoVerificar), Transportes),resultado(Transportes).%procurar todos os transporte e meter numa lista

resultado([]):- nl,write('Todos os transportes foram processados com sucesso!'), true. %Caso não hajam mais transportes para serem vistos

resultado([transporte(X,Y,U,Z)|RestantesTransportes]):- findall(A, fact(final:A), L),
                                                      (subset(L,Z) ->
                                                               write(X),resultado(RestantesTransportes)
                                                               ;
                                                               resultado(RestantesTransportes)
                                                               ).