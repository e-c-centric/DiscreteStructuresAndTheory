%This is a comment
/*Here is another way of writing comments*/

%Facts related to the "male" predicate
male(kofi).   % Kofi is a male
male(dan).
male(kodjo).
male(albert).

%Facts related to the "female" predicate
female(audrey).    %Audrey is a female
female(linda).
female(ayawoa).
female(yolande).

%Facts related to the "parent" predicate
parent(kofi,dan).   % Kofi is a parent of Dan
parent(dan,audrey).
parent(yolande,albert).
parent(yolande,kodjo).
parent(kodjo,ayawoa).

%Now, let us define a few rules
mother(X,Y):-parent(X,Y),female(X).   %Rule 1
/*Simply means that X is the mother of Y, IF
X is a parent of Y AND X is a female.
"mother" is a predicate, and X and Y are variables here.
Variable names should start with a capital letter*/

grandparent(X,Y):-parent(X,Z),parent(Z,Y).  %Rule 2
/*X is a grandparent of Y, IF there exists a person Z such that
 * X is a parent of Z AND Z is a parent of Y. */

sibling(X,Y):-parent(Z,X),parent(Z,Y),X\=Y.  %Rule 3
/*This is saying that X and Y are siblings if they have
a parent (represented by the variable Z here) in common.
 * Of course you can modify this rule so that for X and Y
 * to be siblings, they have to have the same mother and father.*/

