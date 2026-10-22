par(0).
par(1) :- !, fail.
par(N) :- N > 1, X is N - 2, par(X).

sumaPares(0, 0).
sumaPares(N, S) :- 
    N > 0, 
    N1 is N - 1, 
    sumaPares(N1, P), 
    ParActual is N * 2, 
    S is P + ParActual.

potencia(B, 0, 1).
potencia(B, 1, B).
potencia(B, E, V) :- 
    Y is E - 1, 
    potencia(B, Y, M), 
    V is B * M.

fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, R) :- 
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, R1),
    fibonacci(N2, R2),
    R is R1 + R2.

% Hechos de compuertas lógicas
and(1, 1, 1).
and(_, _, 0).

or(0, 0, 0).
or(_, _, 1).

not(0, 1).
not(1, 0).

% Regla del circuito (ejemplo combinacional: S = (Q1 AND Q2) OR (NOT Q2))
circuito(Q1, Q2, S) :- 
    and(Q1, Q2, ResAnd),
    not(Q2, ResNot),
    or(ResAnd, ResNot, S).

% Hechos
sintoma(juan, fiebre).
sintoma(juan, tos).
sintoma(maria, sarpullido).

enfermedad(gripe, fiebre).
enfermedad(gripe, tos).
enfermedad(sarampion, sarpullido).

% Regla de diagnóstico: una persona P tiene la enfermedad E si presenta todos sus síntomas S (simplificado a coincidencia)
diagnostico(P, S, E) :- 
    sintoma(P, S), 
    enfermedad(E, S).