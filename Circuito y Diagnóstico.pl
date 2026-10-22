% EJERCICIO 5: Circuitos Lógicos

% Compuertas básicas
and(1, 1, 1).
and(_, _, 0).

or(0, 0, 0).
or(_, _, 1).

not(0, 1).
not(1, 0).

% Circuito combinacional
circuito(Q1, Q2, S) :- 
    and(Q1, Q2, ResAnd),
    not(Q2, ResNot),
    or(ResAnd, ResNot, S).



% EJERCICIO 6: Diagnóstico Médico


% Hechos: síntomas de las personas
sintoma(juan, fiebre).
sintoma(juan, tos).
sintoma(maria, sarpullido).

% Hechos: síntomas que provoca cada enfermedad
enfermedad(gripe, fiebre).
enfermedad(gripe, tos).
enfermedad(sarampion, sarpullido).

% Regla de diagnóstico
diagnostico(P, S, E) :- 
    sintoma(P, S), 
    enfermedad(E, S).