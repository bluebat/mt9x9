/*
9x9 multiplication table in Prolog
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
*/
% gplc mt9x9.prolog && ./mt9x9

:- initialization(main).
item(I,J,K) :-
    K < I+3 -> (
        format('%dx%d=%2d\t',[K,J,K*J]),
        K1 is K+1, item(I,J,K1)
    ); format('~n',[]).
line(I,J) :-
    J < 10 -> (
        K is I, item(I,J,K),
        J1 is J+1, line(I,J1)
    ); nl.
block(I) :-
    I < 4 -> (
        I1 is I*3-2, line(I1,1),
        I2 is I+1, block(I2)
    ); halt.
main :-
    block(1).
