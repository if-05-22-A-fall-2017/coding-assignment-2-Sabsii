parent(adam,john).
parent(john,anne).
parent(eve,lisa).
parent(eve,john).
parent(john,pat).
parent(pat,jacob).
parent(carol,jacob).
male(adam).
male(john).
male(pat).
male(jacob).
female(eve).
female(lisa).
female(anne).
female(carol).


grandparent(X,Z) :- parent(X,Y),parent(Y,Z).
grandfather(X,Y) :- grandparent(X,Y),male(X).
grandmother(X,Y) :- grandparent(X,Y),female(X).
father(X,Y) :- parent(X,Y),male(X).
mother(X,Y) :- parent(X,Y),female(X).
son(Y,X) :- parent(X,Y),male(Y).
daughter(Y,X) :- parent(X,Y),female(Y).
sibling(X,Y) :- parent(Z,X),parent(Z,Y).
brother(X,Y):- sibling(X,Y),male(X)
sister(X,Y):- sibling(X,Y),female(X).
uncle(X,Y):- sibling(X,Z),parent(Z,Y),male(X).
aunt(X,Y):- sibling(X,Z),parent(Z,Y),female(X).