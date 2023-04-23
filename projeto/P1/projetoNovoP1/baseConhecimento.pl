%_________________________ BASE CONHECIMENTO _________________________________
%__SEM ORCAMENTO__
if sem_orcamento and sem_restricao then viagemLivre.
if sem_orcamento and viagem_curta then viagemCurta.
if sem_orcamento and viagem_longa then viagemLonga.

%__GASTAR POUCO__
if gastar_pouco and viagem_curta then viagemTrabalho.
if gastar_pouco and viagem_longa then viagemGastarPoucoLonga.
if gastar_pouco and sem_restricao then viagemGastarPouco.

%__GASTAR MUITO__
if gastar_muito and viagem_longa then viagemPasseio.
if gastar_muito and sem_restricao then viagemGastarMuito.
if gastar_muito and viagem_curta then viagemGastarMuitoCurta.

/* %__VIAGEM LIVRE & CASA BANHO__
if viagemLivre and casa_de_banho then viagemLivreCasaBanho.
if viagemLivre and sem_casa_de_banho then viagemLivreSemCasaBanho.

%__VIAGEM CURTA & CASA BANHO__
if viagemCurta and casa_de_banho then viagemCurtaCasaBanho.
if viagemCurta and sem_casa_de_banho then viagemCurtaSemCasaBanho.

%__VIAGEM LONGA & CASA BANHO__
if viagemLonga and casa_de_banho then viagemLongaCasaBanho.
if viagemLonga and sem_casa_de_banho then viagemLongaSemCasaBanho.

%__VIAGEM TRABALHO & CASA BANHO__
if viagemTrabalho and casa_de_banho then viagemTrabalhoCasaBanho.
if viagemTrabalho and sem_casa_de_banho then viagemTrabalhoSemCasaBanho.

%__VIAGEM GASTAR POUCO & LONGA & CASA BANHO__
if viagemGastarPoucoLonga and casa_de_banho then viagemGastarPoucoLongaCasaBanho.
if viagemGastarPoucoLonga and sem_casa_de_banho then viagemGastarPoucoLongaSemCasaBanho.

%__VIAGEM GASTAR POUCO SEM RESTRICAO & CASA BANHO__
if viagemGastarPouco and casa_de_banho then viagemGastarPoucoCasaBanho.
if viagemGastarPouco and sem_casa_de_banho then viagemGastarPoucoSemCasaBanho.

%__VIAGEM PASSEIO & CASA BANHO__
if viagemPasseio and casa_de_banho then viagemPasseioCasaBanho.
if viagemPasseio and sem_casa_de_banho then viagemPasseioSemCasaBanho. */

%wifi
