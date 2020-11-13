/*
9x9 multiplication table in Prolog
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
*/
% gplc mt9x9.prolog ; ./mt9x9

:- initialization(main).
print_segment(I,J,K) :-
    K < I+3 -> (
        format('%dx%d=%2d\t',[K,J,K*J]),
        K1 is K+1, print_segment(I,J,K1)
    ); format('~n',[]).
print_line(I,J) :-
    J < 10 -> (
        K is I, print_segment(I,J,K),
        J1 is J+1, print_line(I,J1)
    ); nl.
print_block(I) :-
    I < 4 -> (
        I1 is I*3-2, print_line(I1,1),
        I2 is I+1, print_block(I2)
    ); halt.
main :-
    print_block(1).
