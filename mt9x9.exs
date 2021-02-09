#!/usr/bin/elixir
# 9x9 multiplication table in Elixir
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
# ./mt9x9.exs || elixir mt9x9.exs

Enum.each(Stream.take_every(1..9, 3), fn i ->
    Enum.each(Enum.sort(1..9), fn j ->
        Enum.each([i, i+1, i+2], fn k ->
            IO.write "#{k}x#{j}=#{String.pad_leading(to_string(k*j),2)}\t"
        end)
        IO.write "\n"
    end)
    IO.puts ""
end)
