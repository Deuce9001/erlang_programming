-module(bool).

-export([b_not/1,b_and/2,b_or/2,b_nand/2]).

b_not(true) -> false;
b_not(false) -> true.

b_and(true,true) -> true;
b_and(false, _) -> false; 
b_and(_, false) -> false.

b_or(false,false) -> false;
b_or(true, _) -> true; 
b_or(_, true) -> true.

b_nand(A,B) -> b_not(b_and(A,B)).

