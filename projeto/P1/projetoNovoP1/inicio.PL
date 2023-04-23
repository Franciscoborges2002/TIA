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

%____VERIFICAR LISTAS
all_from_first_in_second(List1, List2) :-
    forall(member(Element,List1), member(Element,List2)).

final(User):- nl, demo, nl, write('Obrigado, '), write(User).

resultado(P):- nl, findall(Y,(fact(P),solucao(Y,_,_,_,_,_,LP), member(P,LP)),L), write('resultado:'), nl, write(L), nl. 