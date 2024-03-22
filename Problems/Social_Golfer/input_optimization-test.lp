players_per_group(2).
groups(2).
weeks(5).

%% ----------------

player(1..G*P) :- groups(G), players_per_group(P).
group(1..G) :- groups(G).
%%week(1..W) :- weeks(W).
1{week(X) : X=1..W }1 :- weeks(W).
week(W-1) :- week(W), W > 1.

{ plays(P,W,G) : group(G) } = 1 :- player(P), week(W).
{ plays(P,W,G) : player(P) } = PL :- week(W), group(G), players_per_group(PL).

meets(P1,P2,W) :- plays(P1,W,G), plays(P2,W,G), P1 < P2.

:- #count { W : meets(P1,P2,W) } > 1, player(P1), player(P2), P1 < P2.


#maximize{1, W : week(W)}.