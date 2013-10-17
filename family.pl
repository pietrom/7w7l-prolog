male(pietro).
male(gianpaolo).
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
