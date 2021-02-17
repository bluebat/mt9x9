#!/usr/bin/escript
% 9x9 multiplication table in Erlang Script
% CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
% ./mt9x9.es || escript mt9x9.es

main(_) ->
    [print_block(I) || I <- lists:seq(1, 9, 3)].
print_block(I) ->
    [print_line(I, J) || J <- lists:seq(1, 9)],
    io:fwrite("~n").
print_line(I, J) ->
    [io:format("~Bx~B=~2B\t", [K, J, K*J]) || K <- lists:seq(I, I+2)],
    io:nl().
