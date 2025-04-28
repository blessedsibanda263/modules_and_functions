-module(shop).

-export([cost/1, total/1]).

-import(mylists, [sum/1, map/2]).

cost(oranges) ->
  5;
cost(newspaper) ->
  8;
cost(apples) ->
  2;
cost(pears) ->
  9;
cost(milk) ->
  7.

total(L) ->
  sum(map(fun({What, N}) -> cost(What) * N end, L)).
