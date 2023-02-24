# Prolog CheatSheet

Prolog don't do math.
All questions end with a dot(.)
<a href="#operators">asdasd</a>

|a|a|
|-|-|
|idade|constante|
|X|variavel|
|Predicado termo(valor)| idade(23) |
|Operadores||


<div id="comments">
%
%!

Comentario estruturado
/**
 *
 *
 */
</div>

<div id="operators">
?-  > Perguntar se é relação entre dois valores.<br />

``` prolog
    parente(andre,francisco).
    parente(joao,francisco).
    parente(francisco,goncalo).
    parente(goncalo,rui).
```

``` prolog
?-parente(joao,francisco)

Answer: Yes/true
```
---
:-  > Verificar se é igual

\== > Veriicar se é diferente
</div>