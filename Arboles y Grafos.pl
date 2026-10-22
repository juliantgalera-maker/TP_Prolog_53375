% Hechos: conexion(CiudadOrigen, CiudadDestino, Distancia)
conexion(mendoza, san_juan, 160).
conexion(mendoza, san_luis, 280).
conexion(san_juan, cordoba, 480).
conexion(san_luis, cordoba, 350).
conexion(san_luis, bs_as, 710).
conexion(cordoba, bs_as, 540).
conexion(cordoba, santa_fe, 280).
conexion(cordoba, misiones, 950).
conexion(santa_fe, misiones, 570).

% Grafo no dirigido (camino en ambas direcciones)
ruta(X, Y, D) :- conexion(X, Y, D).
ruta(X, Y, D) :- conexion(Y, X, D).

% 1. Indicar si existe camino entre dos ciudades
existe_camino(X, Y) :- camino_aux(X, Y, []).

camino_aux(X, Y, Visitados) :- 
    ruta(X, Y, _).
camino_aux(X, Y, Visitados) :- 
    ruta(X, Z, _), 
    \+ member(Z, Visitados), 
    Z \= Y,
    camino_aux(Z, Y, [X | Visitados]).

% 2. Determinar la distancia total de un camino directo o simple
distancia_camino(X, Y, D) :- ruta(X, Y, D).