max_of_list([], 0);
max_of_list([h|t], max) :-
    max_of_list(t, t_max), h > t_max, max is h.
max_of_list([h|t], max) :-
    max_of_list(t, t_max), h <= t_max, max is t_max.


union([],[],[]).
union(l1, [], l1).
union([], l2, l2).
union(l1, [h2|t2], [h2|O]):-
    \+(member(h2, l1)), union(l1, t2, O).
union(l1, [h2|t2], O):-
    member(h2, l1), union(l1, t2, O).
