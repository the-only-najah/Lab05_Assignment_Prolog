% Njah - 9FS3
male(abraham).
male(clancy).
male(herb).
male(homer).
male(bart).

female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

parent(abraham, herb).
parent(abraham, homer).
parent(mona, herb).
parent(mona, homer).

parent(clancy, marge).
parent(clancy, patty).
parent(clancy, selma).
parent(jackie, marge).
parent(jackie, patty).
parent(jackie, selma).

parent(homer, bart).
parent(homer, lisa).
parent(homer, maggie).
parent(marge, bart).
parent(marge, lisa).
parent(marge, maggie).

parent(selma, ling).


father(F, C) :- male(F), parent(F, C).

mother(M, C) :- female(M), parent(M, C).

son(S, P) :- male(S), parent(P, S).

daughter(D, P) :- female(D), parent(P, D).

sibling(X, Y) :- parent(P, X), parent(P, Y), 
X \== Y.

brother(B, X) :- male(B), sibling(B, X).

sister(S, X) :- female(S), sibling(S, X).

grandfather(GF, C) :-  male(GF),  parent(GF, P), parent(P, C).

uncle(U, C) :- male(U), sibling(U, P), parent(P, C).

aunt(A, C) :- female(A), sibling(A, P), parent(P, C).

cousin(X, Y) :- parent(PX, X), parent(PY, Y), sibling(PX, PY), X \== Y.

ancestor(X, Y) :- parent(X, Y).

ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
