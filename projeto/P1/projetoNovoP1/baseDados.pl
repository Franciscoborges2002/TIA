%_________________________ BASE DE DADOS _________________________________

%A usar: gastar_pouco, sem_orcamento, viagem_curta, sem_restricao, casa_de_banho, wifi, naoFumador
%__ORIGEM BRAGA & DESTINO PORTO__
transporte('Origem: Braga, Destino: Porto, Preco: 3€, Transporte: Comboio, Tempo de Viagem: 50 minutos', origem_braga, destino_porto, [viagemTrabalho]).
transporte('Origem: Braga, Destino: Porto, Preco: 14€, Transporte: Autocarro, Tempo de Viagem: 70 minutos', origem_braga, destino_porto, [viagemPasseio]).
transporte('Origem: Braga, Destino: Porto, Preco: 15€, Transporte: Automovel, Tempo de Viagem: 40 minutos', origem_braga, destino_porto, [viagemTrabalho]).

transporte('Origem: Porto, Destino: Braga, Preco: 3€, Transporte: Comboio, Tempo de Viagem: 50 minutos', origem_porto, destino_braga, [viagemTrabalho]).
transporte('Origem: Porto, Destino: Braga, Preco: 14€, Transporte: Autocarro, Tempo de Viagem: 70 minutos', origem_porto, destino_braga, [viagemPasseio]).
transporte('Origem: Porto, Destino: Braga, Preco: 15€, Transporte: Automovel, Tempo de Viagem: 40 minutos', origem_porto, destino_braga, [viagemGastarMuitoCurta]).