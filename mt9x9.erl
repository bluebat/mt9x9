% 9x9 multiplication table in Erlang
% CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
% erlc mt9x9.erl && erl -noshell -s mt9x9 start -s init stop

-module(mt9x9).
-export([start/0]).
start() ->
    [block(I) || I <- lists:seq(1, 9, 3)].
block(I) ->
    [line(I, J) || J <- lists:seq(1, 9)],
    io:fwrite("~n").
line(I, J) ->
    [io:format("~Bx~B=~2B\t", [K, J, K*J]) || K <- lists:seq(I, I+2)],
    io:nl().
