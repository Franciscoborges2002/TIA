%_________________________ BASE CONHECIMENTO _________________________________
%__SEM ORCAMENTO__
/* if sem_orcamento and sem_restricao then viagemLivre.
if sem_orcamento and viagem_curta then viagemCurta.
if sem_orcamento and viagem_longa then viagemLonga. */

%__GASTAR POUCO__
if gastar_pouco and viagem_curta then viagemTrabalho.
if gastar_pouco and viagem_longa then viagemGastarPoucoLonga.
%if gastar_pouco and sem_restricao then viagemGastarPouco.

%__GASTAR MUITO__
if gastar_muito and viagem_longa then viagemPasseio.
if gastar_muito and viagem_curta then viagemGastarMuitoCurta.
%if gastar_muito and sem_restricao then viagemGastarMuito.

%__CASA DE BANHO__
/* if casa_de_banho and zona_fumador then casaBanhoFumador.
if casa_de_banho and sem_zona_fumador then casaBanhoSemZonaFumador.

if sem_casa_de_banho and zona_fumador then semCasaBanhoFumador.
if sem_casa_de_banho and sem_zona_fumador then semCasaBanhoSemZonaFumador.

if wifi and mais_ecologico then comboioWifiMaisEcologico.
if wifi and mais_ecologico then autocarroWifiMaisEcologico.

if wifi and menos_ecologico then autocarroWifiMenosEcologico.

if sem_wifi and mais_ecologico then comboioSemWifiMaisEcologico.
if sem_wifi and mais_ecologico then autocarroSemWifiMaisEcologico.

if sem_wifi and menos_ecologico then automovelSemWifiMenosEcologico. */