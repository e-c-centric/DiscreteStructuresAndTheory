mother(jane, bob).
father(john, bob).
father(bob, anne).
grandfather(X, Y) :-
    father(X, Z), (mother(Z, Y) ; father(Z, Y)).


