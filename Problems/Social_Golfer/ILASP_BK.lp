player(1..G*P) :- groups(G), players_per_group(P).
group(1..G) :- groups(G).
week(1..W) :- weeks(W).

0{ plays(P,W,G)}1 :- player(P), week(W), group(G).

:- plays(P,W,G1), plays(P,W,G2), G1 != G2.
:- player(P), week(W), not plays(P, W, _).

0{ plays(P,W,G) }1 :- player(P), week(W), group(G), players_per_group(PL).
:- players_per_group(PL), PL+1 #count {P: plays(P,W,G)}, week(W), group(G) .
p :- players_per_group(PL), PL #count {P: plays(P,W,G)}, week(W), group(G) .
:- not p .


meets(P1,P2,W) :- plays(P1,W,G), plays(P2,W,G), P1 < P2.

:- meets(P1,P2,W1), meets(P1,P2,W2), W1 != W2.
:- meets(P1,P2,W1), meets(P2,P1,W2), W1 != W2.
