%_______________BACKWARD_______________________
%
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

%--------------------- BASE CONHECIMENTO --------------------------

if cozinha_estrangeira and sem_lactose and nenhum then perfil1.
if fast_food and vegetariano and sustentavel then perfil2.
if fast_food and vegano and sustentavel then perfil3.
if fast_food and sem_gluten and sustentavel then perfil4.
if fast_food and sem_lactose and sustentavel then perfil5.
if fast_food and nenhumrest and sustentavel then perfil6.
if fast_food and vegetariano and nenhum then perfil7.
if fast_food and vegano and nenhum then perfil8.
if fast_food and sem_gluten and nenhum then perfil9.
if fast_food and sem_lactose and nenhum then perfil10.
if fast_food and nenhumrest and nenhum then perfil11.
if tapas and vegetariano and sustentavel then perfil12.
if tapas and vegano and sustentavel then perfil13.
if tapas and sem_gluten and sustentavel then perfil14.
if tapas and sem_lactose and sustentavel then perfil15.
if tapas and nenhumrest and sustentavel then perfil16.
if tapas and vegetariano and nenhum then perfil17.
if tapas and vegano and nenhum then perfil18.
if tapas and sem_gluten and nenhum then perfil19.
if tapas and sem_lactose and nenhum then perfil20.
if tapas and nenhumrest and nenhum then perfil21.
if pastelaria and vegetariano and sustentavel then perfil22.
if pastelaria and vegano and sustentavel then perfil23.
if pastelaria and sem_gluten and sustentavel then perfil24.
if pastelaria and sem_lactose and sustentavel then perfil25.
if pastelaria and nenhumrest and sustentavel then perfil26.
if pastelaria and vegetariano and nenhum then perfil27.
if pastelaria and vegano and nenhum then perfil28.
if pastelaria and sem_gluten and nenhum then perfil29.
if pastelaria and sem_lactose and nenhum then perfil30.
if pastelaria and nenhumrest and nenhum then perfil31.
if cozinha_tradicional and vegetariano and sustentavel then perfil32.
if cozinha_tradicional and vegano and sustentavel then perfil33.
if cozinha_tradicional and sem_gluten and sustentavel then perfil34.
if cozinha_tradicional and sem_lactose and sustentavel then perfil35.
if cozinha_tradicional and nenhumrest and sustentavel then perfil36.
if cozinha_tradicional and vegetariano and nenhum then perfil37.
if cozinha_tradicional and vegano and nenhum then perfil38.
if cozinha_tradicional and sem_gluten and nenhum then perfil39.
if cozinha_tradicional and sem_lactose and nenhum then perfil40.
if cozinha_tradicional and nenhumrest and nenhum then perfil41.
if cozinha_saudavel and vegetariano and sustentavel then perfil42.
if cozinha_saudavel and vegano and sustentavel then perfil43.
if cozinha_saudavel and sem_gluten and sustentavel then perfil44.
if cozinha_saudavel and sem_lactose and sustentavel then perfil45.
if cozinha_saudavel and nenhumrest and sustentavel then perfil46.
if cozinha_saudavel and vegetariano and nenhum then perfil47.
if cozinha_saudavel and vegano and nenhum then perfil48.
if cozinha_saudavel and sem_gluten and nenhum then perfil49.
if cozinha_saudavel and sem_lactose and nenhum then perfil50.
if cozinha_saudavel and nenhumrest and nenhum then perfil51.
if cozinha_estrangeira and vegetariano and sustetentavel then perfil52.
if cozinha_estrangeira and vegano and sustetentavel then perfil53.
if cozinha_estrangeira and sem_gluten and sustetentavel then perfil54.
if cozinha_estrangeira and sem_lactose and sustetentavel then perfil55.
if cozinha_estrangeira and nenhumrest and sustetentavel then perfil56.
if cozinha_estrangeira and vegetariano and nenhum then perfil57.
if cozinha_estrangeira and vegano and nennhum then perfil58.
if cozinha_estrangeira and sem_gluten and nenhum then perfil59.




%---------------------- BASE DE DADOS ----------------------------------------79
solucao('tapa e puxa', tapas, [nenhum], nenhum, [entradas, tapas], [perfil16, perfil21]).
solucao('xisko', tapas, [vegetariano, vegano, sem_gluten, nenhum], sustentavel, [entradas, bebidas, massa, sobremesas], [perfil12, perfil13, perfil14, perfil16]).
solucao('mezanino', tapas, [vegetariano, vegano, sem_gluten, nenhum], sustentavel, [entradas, bebidas, sobremesas], [perfil12, perfil13, perfil14, perfil16]).
solucao('sala 141', tapas, [vegetariano, vegano, sem_gluten, nenhum], sustentavel, [entradas, tapas, sopa, hambugueres, bebidas, sobremesas], [perfil12, perfil13, perfil14, perfil16]).
solucao('berco dos bifes', cozinha_tradicional, [nenhum], nenhum, [sopa, francesinha, sobremesas, bebidas, bifes, hamburgueres, peixes], [perfil36, perfil41]).
solucao('berco dos bifes', pastelaria, [nenhum], nenhum, [doces, salgados, bebidas], [perfil26, perfil31]).
solucao('historico', cozinha_tradicional, [vegetariano, vegano, sem_gluten, nenhum], nenhum, [sopa, frango, peixes, bifes, bebidas, sobremesas, salgados, entradas], [perfil32, perfil33, perfil34, perfil36, perfil37, perfil38, perfil39, perfil41]).
solucao('historico', pastelaria, [vegetariano, vegano, sem_gluten, nenhum], nenhum, [bebidas, sobremesas, salgados, doces], [perfil22, perfil23, perfil24, perfil26, perfil27, perfil28, perfil29, perfil31]).
solucao('mumadona', cozinha_tradicional, [nenhum], nenhum, [sopa, peixes, marisco, francesinha, bifes, bebidas, sobremesas], [perfil36, perfil41]).
solucao('mumadona', pastelaria, [nenhum], nenhum, [bebidas, sobremesas, salgados, doces], [perfil26, perfil31]).
solucao('pinguim', cozinha_tradicional, [nenhum], nenhum, [sopa, peixes, francesinha, bifes, bebidas, sobremesas], [perfil36, perfil41]).
solucao('pinguim', pastelaria, [nenhum], nenhum, [bebidas, sobremesas, salgados, doces], [perfil26,perfil31]).
solucao('oliveiras', cozinha_tradicional, [nenhum], nenhum, [sopa, peixes, bifes, bebidas, sobremesas], [perfil36, perfil41]).
solucao('oliveiras', pastelaria, [nenhum], nenhum, [bebidas, sobremesas, salgados, doces], [perfil26, perfil31]).
solucao('resves', cozinha_tradicional, [vegetariano, vegano, sem_gluten, nenhum], nenhum, [sopa, bifes, bebidas, sobremesas, massas, francesinha, peixes], [perfil32, perfil33, perfil34, perfil36, perfil37, perfil38, perfil39, perfil41]).
solucao('resves', pastelaria, [vegetariano, vegano, sem_gluten, nenhum], nenhum, [bebidas, sobremesas, salgados, doces], [perfil22, perfil23, perfil24, perfil26, perfil27, perfil28, perfil29, perfil31]).
solucao('cervejaria guimaraes', cozinha_tradicional, [vegetariano, nenhum], nenhum, [sopa, bifes, bebidas, sobremesas, marisco, francesinha, peixes], [perfil32, perfil36, perfil37, perfil41]).
solucao('cervejaria guimaraes', pastelaria, [vegetariano, nenhum], nenhum, [bebidas, sobremesas, salgados, doces], [perfil22, perfil26, perfil27, perfil31]).
solucao('el rei d afonso', cozinha_tradicional, [nenhum], nenhum, [sopa, bifes, bebidas, sobremesas, marisco, peixes], [perfil41]).
solucao('el rei d afonso', pastelaria, [nenhum], nenhum, [bebidas, sobremesas, salgados, doces], [perfil31]).
solucao('pastelaria nova avenida', cozinha_tradicional, [nenhum], nenhum, [sopa, frango, bebidas, sobremesas, marisco], [perfil36, perfil41]).
solucao('pastelaria nova avenida', pastelaria, [nenhum], nenhum, [bebidas, sobremesas, salgados, doces], [perfil26, perfil31]).
solucao('casa amarela', cozinha_tradicional, [vegetariano, vegano, sem_gluten, nenhum], nenhum, [sopa, bifes, bebidas, sobremesas, peixes], [perfil32, perfil33, perfil34, perfil36, perfil37, perfil38, perfil39, perfil41]).
solucao('casa amarela', pastelaria, [vegetariano, vegano, sem_gluten, nenhum], nenhum, [bebidas, sobremesas, salgados, doces], [perfil22, perfil23, perfil24, perfil26, perfil27, perfil28, perfil29, perfil31]).
solucao('dan jose', pastelaria, [nenhum], nenhum, [bebidas, sobremesas, salgados, doces], [perfil26, perfil31]).
solucao('nut guimaraes', pastelaria, [vegetariano, nenhum], nenhum, [bebidas, torradas, panquecas, cafe], [perfil22, perfil26, perfil27, perfil31]).
solucao('noz moscada', pastelaria, [vegetariano, vegan, nenhum], nenhum, [bebidas, torradas, panquecas, cafe, iogurte, tostas], [perfil22, perfil23, perfil26, perfil27, perfil28, perfil31]).
solucao('estamine', pastelaria, [vegetariano, vegan, nenhum], sustentavel, [bebidas, torradas, panquecas, cafe, iogurte, tostas], [perfil22, perfil23, perfil26]).
solucao('cake n bake brunch & cocktails', pastelaria, [vegetariano, nenhum], nenhum, [panquecas, poke_bawls, tostas_healthy, cafe, torradas, iogurtes, ovos_mexidos], [perfil22, perfil26, perfil27, perfil31]).
solucao('cake n bake brunch & cocktails', tapas, [vegetariano, nenhum], nenhum, [tabuas_salgadas, bebidas, sobremesas], [perfil12, perfil16, perfil17, perfil21]).
solucao('cake n bake brunch & cocktails', cozinha_saudavel, [vegetariano, nenhum], nenhum, [sandes, massas, saladas, crepes], [perfil42, perfil46, perfil47, perfil51]).
solucao('donna veggie', cozinha_saudavel, [vegetariano, vegan, nenhum], sustentavel, [saladas, snacks, bebidas, legumes_salteados, sopas], [perfil42, perfil43, perfil46]).
solucao('cantina caa', cozinha_saudavel, [vegetariano, vegan, nenhum], sustentavel, [saladas, massas, bebidas, sopas, snacks], [perfil42, perfil43, perfil46]).
solucao('cor de tangerina', cozinha_saudavel, [vegetariano, vegan, sem_gluten, nenhum], sustentavel, [saladas, bebidas, sopas, sandes, crepes], [perfil42, perfil43, perfil44, perfil46]).
solucao('cor de tangerina', pastelaria, [vegetariano, vegan, sem_gluten, nenhum], sustentavel, [panquecas, poke_bawls, tostas_healthy, cafe, torradas, iogurtes, ovos_mexidos], [perfil22, perfil23, perfil24, perfil26]).
solucao('manjar dos doces', cozinha_saudavel, [vegetariano, nenhum], nenhum, [saladas, massas, bebidas, sopas, sandes, crepes], [perfil42, perfil46, perfil47, perfil51]).
solucao('manjar dos doces', tapas, [vegetariano, nenhum], nenhum, [tabuas_salgadas, bebidas, sobremesas], [perfil12, perfil16, perfil17, perfil21]).
solucao('manjar dos doces', pastelaria, [vegetariano, nenhum], nenhum, [panquecas, poke_bawls, tostas_healthy, cafe, torradas, iogurtes], [perfil22, perfil26, perfil27, perfil31]).
solucao('cor de cenoura', cozinha_saudavel, [nenhum], nenhum, [saladas, massas, bebidas, sopas, sandes, omoletes], [perfil46, perfil51]).
solucao('cor de cenoura', pastelaria, [vegetariano, nenhum], nenhum, [panquecas, tostas, cafe, torradas, iogurtes], [perfil22, perfil26, perfil27, perfil31]).
solucao('dan jose', cozinha_tradicional, [nenhum], nenhum, [peixe, bebidas, sobremesa, salgados,entradas, bifes, marisco], [perfil41]).
solucao('caneiros', pastelaria, [vegetariano, nenhum], sustentavel, [bolo_de_aniversario, doces, bebidas], [perfil22, perfil27, perfil31, perfil26]).
solucao('trigerina', pastelaria, [vegetariano, nenhum], sustentavel, [bolo_de_aniversario, doces, bebidas], [perfil22, perfil27, perfil31, perfil26]).
solucao('supremo gosto', pastelaria, [vegetariano, nenhum], sustentavel, [bolo_de_aniversario, doces, bebidas], [perfil22, perfil27, perfil31, perfil26]).
solucao('a silva', pastelaria, [vegetariano, nenhum], sustentavel, [bolo_de_aniversario, doces, bebidas], [perfil22, perfil27, perfil31, perfil, 26]).
solucao('bolos a medida', pastelaria, [vegetariano, nenhum], sustentavel, [bolo_de_aniversario, doces], [perfil22, perfil27, perfil31, perfil26]).
solucao('telepizza', fast_food, [vegetariano, nenhum], nenhum, [pizza, hamburguer, frango, massa, salada, bebidas, massas], [perfil7, perfil2, perfi11, perfil6]).
solucao('burguer king', fast_food, [vegetarino, sem_gluten, nenhum], sustentavel, [hamburguer, bebidas, entradas, sobremesa], [perfil2, perfil4, perfil6]).
solucao('cachorrao', fast_food, [nenhum], nenhum, [hamburguer, bebida, prego_prato, francesinha, sobremesa, sobremesa, entrada], [perfil11]).
solucao('cachorao', pastelaria, [nenhum], nenhum, [torradas, pao, sobremesa, cafe, bebida], [perfil31]).
solucao('dans', fast_food, [vegetariano, vegano, sem_gluten, nenhum], sustentavel,[hamburguer, bebida, entrada], [perfil2, perfil3, perfil4, perfil6]).
solucao('taberna londrina', fast_food, [vegetariano], nenhum, [francesinha, hamburguer, bife, entrada, bebida], [perfil7, perfil11]).
solucao('museu do presunto', fast_food, [nenhum], nenhum, [francesinha, hamburguer, cachorro, baguete, entrada, bebida], [perfil11]).
solucao('cristo rei', fast_food, [nenhum], nenhum, [pizza, salada, prego_prato, bebida, sobremesa], [perfil11]).
solucao('cristo rei', pastelaria, [nenhum], nenhum, [sobremesa, cafe, bebida, pao, tostas], [perfil31]).
solucao('celeste', fast_food, [vegetariano, nenhum], nenhum, [pizza, salada, prego_prato, bebida, sobremesa], [perfil11, perfil7]).
solucao('celeste', pastelaria, [vegetariano, nenhum], nenhum, [sobremesa, cafe, bebida], [perfil31, perfil27]).
solucao('pans & campany', fast_food, [vegetariano, vegano, nenhum], nenhum, [baguete, salada, sobremesa, entrada, cafe], [perfil11, perfil7, perfil8]).
solucao('real plaza', fast_food, [nenhum], nenhum, [francesinha, salada, bebida, sobremesa, cafe], [perfil11]).
solucao('a alcatea', cozinha_saudavel, [vegetariano, nenhum], sustentavel, [tostas_healthy, poke_bowl, salada, cafe, bebida, panquecas, salgados, massa], [perfil42, perfil46]).
solucao('a alcatea', fast_food, [nenhum], sustentavel, [cachorro, hamburguer, bagel, francesinha, massa], [perfil6]).
solucao('a alcatea', pastelaria, [vegetariano, sem_gluten, sem_lactose, nenhum], sustentavel, [panquecas, iogurte, tostas_healthy, bebida, cafe, torradas, bolos, salgados, bebida, sobremesa], [perfil22, perfil24, perfil25, perfil26]).
solucao('a alcatea', cozinha_saudavel, [nenhum], nenhum, [sandes, sopa, omoletes, massa, bebida], [perfil51]).
solucao('mcdonalds', fast_food, [vegetariano, sem_gluten,nenhum], sustentavel, [hamburguer, sopa, bebida, entrada, sobremesa], [perfil2, perfil4, perfil6]).
solucao('mcdonalds', pastelaria, [vegetariano, nenhum], sustentavel, [panquecas, torradas, omoletes, sumos, cafe], [perfil22, perfil26]).
solucao('mcdonalds', fast_food, [vegetariano, sem_gluten,nenhum], sustentavel, [hamburguer, sopa, bebida, entrada, sobremesa ], [perfil2, perfil4, perfil6]).
solucao('roiyaru', cozinha_estrangeira, [nenhum], nenhum, [sushi, entrada, massa, sopa_mizzo, bebida], [perfil1,perfil56]).
solucao('imperio do sushi', cozinha_estrangeira, [vegetariano, vegano, nenhum], nenhum, [sushi, entrada, massa, sopa_mizzo, bebida], [perfil57, perfil58, perfil1, perfil52,perfil53, perfil56]).
solucao('piccolo mondo', cozinha_estrangeira, [vegetariano, nenhum], nenhum, [pizza, massa, risoto, lasanha, bebida, sobremesa, entrada], [perfil57, perfil1, perfil52,perfil56]).
solucao('marco bellini', cozinha_estrangeira, [vegetariano, nenhum], sustentavel, [pizza, bebida], [perfil52, perfil56]).
solucao('marco bellini', cozinha_estrangeira, [vegetariano, nenhum], sustentavel, [pizza, bebida], [perfil52, perfil56]).
solucao('chines jardim bambu', cozinha_estrangeira, [vegetariano, nenhum], sustentavel, [sushi, massa, arroz_xauxau, entrada, sobremesa, bebida], [perfil52,perfil56]).
solucao('rei do pastel', cozinha_estrangeira, [nenhum], nenhum, [espetadas, bebida, salgados, pasteis], [perfil1, perfil56]).
solucao('rei do pastel', cozinha_estrangeira, [nenhum], nenhum, [salgados, pasteis, bebida], [perfil1, perfil56]).
solucao('pizzaria luzzo', cozinha_estrangeira, [vegetariano, vegano, sem_gluten, nenhum], nenhum, [pizza, entrada, sobremesa, bebida], [perfil57, perfil58, perfil59, perfil1, perfil52, perfil53,perfil54, perfil56]).
solucao('cantinho do tio julio', tapas, [vegetariano, nenhum], nenhum, [tapas, entrada, sobremesa, bebida], [perfil12, perfil16, perfil17, perfil21]).
solucao('pick a pau', tapas, [nenhum], nenhum, [sopa, tapas, entrada, sobremesa, bebida, prego_prato], [perfil16, perfil21]).
solucao('caos', tapas, [nenhum], nenhum, [entrada, tapas, sobremesa, bebida], [perfil16, perfil21]).
solucao('tapas e manias', tapas, [vegetariano, vegano, nenhum], nenhum, [entrada, tapas, massa, bebida, sobremesa], [perfil12, perfil13, perfil16, perfil17, perfil18, perfil21]).
solucao('tapas e manias', tapas, [vegetariano, vegano, nenhum], nenhum, [entrada, tapas, bebida, sobremesa], [perfil12, perfil13, perfil16, perfil17, perfil18, perfil21]).






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




%------------------------------ INTERFACE ---------------------------------
:-dynamic(fact/1). % definir fact como dinamico
:-[backward, forward, bd, baseconhecimento].

%___________________________INICIO_____________________________
%
iniciar:-retractall(fact(_)),write('Bem vindo e Boa sessão!'),nl,nl,pergunta1().

%_________________________PERGUNTAS____________________________
%
pergunta1():-write('Como te chamas?'), nl, nl, read(User), inf(User).

inf(User):-nl, write(User), write(', para te conseguirmos aconselhar escolhe uma opcao para cada pergunta. '), nl, pergunta2(User).

pergunta2(User):- nl, write(' Que tipo de refeicao quer? '),nl, nl,
 write('"a." - Fast Food'),nl,
 write('"b." - Pastelaria'),nl,
 write('"c." - Cozinha tradicional'),nl,
 write('"d." - Cozinha Saudavel'),nl,
 write('"e." - Cozinha Estrageira'),nl,
 write('"f." - Tapas'),nl,
 write(' A sua opcao e : '),read(R),(
 (R == a), assert(fact(fast_food)),pergunta3(User);
 (R == b), assert(fact(pastelaria)),pergunta3(User);
 (R == c), assert(fact(cozinha_tradicional)),pergunta3(User);
 (R == d), assert(fact(cozinha_saudavel)),pergunta3(User);
 (R == e), assert(fact(cozinha_estrangeira)),pergunta3(User);
 (R == f), assert(fact(tapas)),pergunta3(User)).

pergunta3(User):- nl, write('Tem alguma restricao alimentar? '),nl, nl,
 write('"a." - Vegetariano'),nl,
 write('"b." - Vegano'),nl,
 write('"c." - Intolerancia ao Gluten'),nl,
 write('"d." - Intolerancia a  lactose'),nl,
 write('"e." - Nenhuma'),nl, nl,
 write(' A sua opcao e : '),read(Rest),(
 (Rest == a), assert(fact(vegetariano)),pergunta4(User);
 (Rest == b), assert(fact(vegano)),pergunta4(User);
 (Rest == c), assert(fact(sem_gluten)),pergunta4(User);
 (Rest == d), assert(fact(sem_lactose)),pergunta4(User);
 (Rest == e), assert(fact(nenhumrest)),pergunta4(User)).

pergunta4(User):- nl, write('Tem alguma preocupacao com a sustentabilidade?'),nl, nl,
 write('"a." - Sim'),nl,
 write('"b." - Nao'),nl, nl,
 write(' A sua opcao e : '),read(Sus),(
 (Sus == a), assert(fact(sustentavel)), nl, final(User);
 (Sus == b), assert(fact(nenhum))), nl, final(User).

final(User):- nl, demo, nl, write('Obrigado, '), write(User).

resultado(P):- nl, findall(Y,(fact(P),solucao(Y,_,_,_,_,LP), member(P,LP)),L), write('resultado:'), write(L).

%fact(cozinha_tradicional).
%fact(nenhumrest).
%fact(nenhum).