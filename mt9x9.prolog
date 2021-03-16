/*
9x9 multiplication table in Prolog
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
*/
% gplc mt9x9.prolog && ./mt9x9

:- initialization(main).
item(I,J,K) :-
    K =< I+2 -> (
        format('%dx%d=%2d\t',[K,J,K*J]),
        item(I,J,K+1)
    ); format('~n',[]).
line(I,J) :-
    J =< 9 -> (
        item(I,J,I),
        line(I,J+1)
    ); nl.
block(I) :-
    I =< 9 -> (
        line(I,1),
        block(I+3)
    ); halt.
main :-
    block(1).
