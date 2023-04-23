:-op(800,fx,if).
:-op(700,xfx, then).
:-op(300,xfy,or).
:-op(200,xfy,and).

:-dynamic fact/1.

demo:-new_derived_fact(P), !, write('Derived: '), write(P), nl, assert(fact(P)),demo.
demo:-write('No more facts').
new_derived_fact(Concl):-if Cond then Concl, \+ fact(Concl), composed_fact(Cond).

composed_fact(Cond):- fact(Cond).
composed_fact(Cond1 and Cond2):-
    composed_fact(Cond1),
    composed_fact(Cond2).
composed_fact(Cond1 or Cond2):-
    composed_fact(Cond1);
    composed_fact(Cond2).

if origem_guimaraes and destino_braga and barato then autocarro.

%Criar uma base de dados com todos os transportes 


% Base de dados de conhecimento:
% transporte(Origem, Destino, Meio de Transporte, Preço, Tempo (minutos))
transporte('Braga', 'Porto', 'Comboio', 3, 50). 
transporte('Braga', 'Porto', 'Autocarro', 14, 70).
transporte('Braga', 'Porto', 'Automóvel', 15, 40).

transporte('Porto', 'Lisboa', 'Comboio', 60, 180).
transporte('Porto', 'Lisboa', 'Automóvel', 90, 150). 
transporte('Porto', 'Lisboa', 'Avião', 130, 120). 
transporte('Porto', 'Lisboa', 'Autocarro', 25, 150).

transporte('Lisboa', 'Faro', 'Comboio', 80, 240).
transporte('Lisboa', 'Faro', 'Automóvel', 150, 200).
transporte('Lisboa', 'Faro', 'Avião', 140, 120).
transporte('Lisboa', 'Faro', 'Autocarro', 70, 240).


transporte('Porto', 'Viseu', 'Automóvel', 90, 200).
transporte('Porto', 'Viseu', 'Comboio', 70, 260).
transporte('Porto', 'Viseu', 'Autocarro', 60, 250).


transporte('Braga', 'Guimarães', 'Automóvel', 10, 20). 
transporte('Braga', 'Guimarães', 'Autocarro', 15, 30). 

transporte('Guimarães', 'Porto', 'Automóvel', 14, 50).
transporte('Guimarães', 'Porto', 'Comboio', 3, 70).
transporte('Guimarães', 'Porto', 'Autocarro', 12, 60).


transporte('Viseu', 'Coimbra', 'Automóvel', 40, 100).
transporte('Coimbra', 'Braga', 'Automóvel', 60, 90).
transporte('Coimbra', 'Lisboa', 'Comboio', 30, 120).

%%AO CONTRATIO
% transporte(Origem, Destino, Meio de Transporte, Preço, Tempo (minutos))
transporte('Porto', 'Braga', 'Comboio', 3, 50). 
transporte('Porto', 'Braga', 'Autocarro', 14, 70).
transporte('Porto', 'Braga', 'Automóvel', 15, 40).
transporte('Viseu', 'Braga', 'Automóvel', 90, 200). 

transporte('Lisboa', 'Porto', 'Comboio', 60, 180).
transporte('Lisboa', 'Porto', 'Automóvel', 90, 150). 
transporte('Lisboa', 'Porto', 'Avião', 130, 120). 
transporte('Lisboa', 'Porto', 'Autocarro', 25, 150).

transporte('Faro', 'Lisboa', 'Comboio', 80, 240).
transporte('Faro', 'Lisboa', 'Automóvel', 150, 200).
transporte('Faro', 'Lisboa', 'Avião', 140, 120).
transporte('Faro', 'Lisboa', 'Autocarro', 70, 240).


transporte('Viseu', 'Porto', 'Automóvel', 90, 200).
transporte('Viseu', 'Porto', 'Comboio', 70, 260).
transporte('Viseu', 'Porto', 'Autocarro', 60, 250).


transporte('Guimarães', 'Braga', 'Automóvel', 10, 20). 
transporte('Guimarães', 'Braga', 'Autocarro', 15, 30). 

transporte('Porto', 'Guimarães', 'Automóvel', 14, 50).
transporte('Porto', 'Guimarães', 'Comboio', 3, 70).
transporte('Porto', 'Guimarães', 'Autocarro', 12, 60).


transporte('Coimbra', 'Viseu', 'Automóvel', 40, 100).
transporte('Braga','Coimbra', 'Automóvel', 60, 90).
transporte('Lisboa', 'Coimbra', 'Comboio', 30, 120).

fact(origem_guimaraes).
fact(destino_braga).
fact(barato).