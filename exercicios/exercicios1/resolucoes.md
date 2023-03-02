# Exercício 1 – Relações de Trabalho

A Rita supervisiona o João e o Rui, na empresa de consultadoria C. O Rui exerce funções
também na empresa S, de software, onde supervisiona o Miguel. O João orienta uma
estágiaria, a Iva. A Rita é chefe da empresa C, enquanto que o Vitor chefia a empresa S,
supervisionando o Rui e o Tomás. Por sua vez, o Tomás orienta o estagiário Ivo.

---
a) Utilizando o predicado trabalhapara(X,Y,E) (ou seja, X trabalha sob a direcção
de Y na empresa E), represente em Prolog todas relações de chefia/orientação. 

```
    trabalhapara(joao,rita,c).
    trabalhapara(rui,rita,c).
    trabalhapara(iva,joao,c).
    trabalhapara(miguel,rui,s).
    trabalhapara(rui,vitor,s).
    trabalhapara(tomas,vitor,s).
    trabalhapara(ivo,tomas,s).
```
---
b) Represente o facto chefe(X,E), onde X representa o chefe da empresa E. 
```
    chefe(rita,c).
    chefe(vitor,s).
```
---
c) Codifique a regra mesmonivel(X,Y), que é verdade se X e Y trabalham para o
mesmo chefe/supervisor, sendo que a empresa de X e Y não interessa (pode ser
igual ou diferente).
```
    mesmonivel(joao,rui).
    mesmonivel(rui,tomas).
```
---
d) Codifique a regra empregado(X,E), onde X trabalha na empresa E (nota: trabalhadores e chefes são empregados).
```
    empregado(rita,c).
    empregado(joao,c).
    empregado(rui,c).
    empregado(iva,c).
    empregado(vitor,s).
    empregado(rui,s).
    empregado(miguel,s).
    empregado(tomas,s).
    empregado(ivo,s).
```
---
e) Implemente a regra temchefe(X,Y), que é verdade se X trabalhar na empresa E
onde Y é o chefe.
```
    temchefe(joao,rita).
    temchefe(rui,rita).
    temchefe(rui,vitor).
    temchefe(tomas,vitor).
```
---
f) Codifique a regra acima(X,Y,E), onde Y supervisiona X ou supervisiona alguém
que supervisiona X na empresa E.
```
    
```
---
g) Crie um facto que permita dar um sexo (m ou f) a cada um dos empregados.
Utilizando este facto, defina a regra perigoassedio(X,Y) que é X e Y forem de
sexos diferentes e se um trabalhar para o outro.
```
    
```
h) Formule em Prolog as seguintes questões (perguntas simples, sem utilizar o
findall):

1.
```
    
```