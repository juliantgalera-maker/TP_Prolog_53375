sumaLista(0, []).
sumaLista(S, [C | Q]) :- 
    sumaLista(P, Q), 
    S is P + C.

cantidad([], 0).
cantidad([_ | Q], N) :- 
    cantidad(Q, N1), 
    N is N1 + 1.

ultimo([U], U).
ultimo([_ | Q], U) :- 
    ultimo(Q, U).

inversa([], []).
inversa([C | Q], I) :- 
    inversa(Q, IQ), 
    concatenar(IQ, [C], I).

concatenar([], L, L).
concatenar([C | Q], L2, [C | Res]) :- 
    concatenar(Q, L2, Res).