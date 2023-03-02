# Aula 24/02/2023

Estutura de um SBC<br />
<a href="#regrasProducao">Regras de Produção</a><br />
Livro <a href="../../book/chapter15">capitulo 15</a>
---
<br />
Sistemas de inferência -> é um programa para resolver.<br />
Base de conhecimento-> Forma de representar conhecimento usando estruturas prolog<br />
Base de dados -> o Mesmo, tratar do problema<br />

---
<div id="regrasProducao">
    <h2>Regras de Produção</h2><br />
    <h3>Caso Estudo: Inundação</h3>
    A informação inicial(situação atual) pomos na Base de dados<br />
    A resposta é feita pelo sistema de inferência.
    

    % A simple backward chaining rule interpreter
    :- op( 800, fx, if).
    :- op( 700, xfx, then).
    :- op( 300, xfy, or).
    :- op( 200, xfy, and).

    % Simple forward chaining in Prolog
    demo:- new_derived_fact( P), !, % A new fact
        write( 'Derived: '), write( P), nl,
        assert( fact( P)),
        demo. % Continue
    demo:- write( 'No more facts'). % All facts derived
    new_derived_fact( Concl) :-
        if Cond then Concl, % A rule
        \+ fact( Concl), % Rule's conclusion not yet a fact
        composed_fact( Cond). % Condition true? 

    composed_fact( Cond) :-
        fact( Cond). % Simple fact
    composed_fact( Cond1 and Cond2) :-
        composed_fact( Cond1),
        composed_fact( Cond2). % Both conjuncts true
    composed_fact( Cond1 or Cond2) :-
        composed_fact( Cond1)
        ;
        composed_fact( Cond2).

    :- dynamic fact/1.
    % regras: base de conhecimento
    if hall_molhado and cozinha_seco then fuga_banho.
    if hall_molhado and banho_seco then problema_cozinha.
    if janela_fechada or nao_chove then nao_agua.
    if hall_seco and banho_molhado then torneira_aberta.
    if problema_cozinha and janela_fechada then inundacao.

    % factos: base de dados, situação actual
    fact(hall_molhado).
    fact(banho_seco).
    fact(janela_fechada).
``

</div><br />

Sistema de inferência
- Backward Chaining >
- Forward Chaining >