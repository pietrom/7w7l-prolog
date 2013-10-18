male(pietro).
male(gianpaolo).
female(cristina).
female(luisa).
female(maddalena).
female(irene).
parent(gianpaolo, pietro).
parent(gianpaolo, maddalena).
parent(pietro,irene).

sibling(X,Y) :-
	parent(Z,X),
	parent(Z,Y),
	X \= Y.

father(X,Y) :-
	parent(X,Y),
	male(X).

brother(X,Y) :-
	sibling(X,Y),
	male(X).

sister(X,Y) :-
	sibling(X,Y),
	female(X).

aunt(X,Y) :-
	sister(X,Z),
	parent(Z,Y).
