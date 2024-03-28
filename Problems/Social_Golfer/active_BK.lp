%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Extra Predicates
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

max_week(P) :- week(P), not week(P+1).

next_week(P-1,P) :- P>1, max_week(P).
next_week(P-1,P) :- next_week(P,_), P>1.

%%weekGEQ(P, W, G) :- plays(P, W, G).
%%weekGEQ(P,W,G) :- weekGEQ(P,W+ 1,G), W>0.

maxplayer(X) :- player(X), not player(X+1).
maxgroup(X) :- group(X), not group(X+1).

next_player(P-1,P) :- P>1, maxplayer(P).
next_player(P-1,P) :- next_player(P,_), P>1.
next_group(P-1,P) :- P>1, maxgroup(P).
next_group(P-1,P) :- next_group(P,_), P>1.

lessthan(X,Y) :- group(X), group(Y), X <Y.
lessthan(X,Y) :- player(X), player(Y), X <Y.
lessthan(X,Y) :- week(X), week(Y), X <Y.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SBCs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Iteration n None
%% From files: 1-4-1.lp - 2-2-1.lp - 2-2-2.lp - 2-2-3.lp - 2-4-1.lp
 :- lessthan(V1,V3), plays(V1,V2,V3).
 :- meets(V1,V2,V3), not next_player(V1,V2), not lessthan(V3,V2).
 :- lessthan(V2,V1), plays(V1,V2,V3), not lessthan(V3,V1).

