player(G*N) :- groups(G), players_per_group(N).
player(P-1) :- player(P), P > 1.
 
group(G) :- groups(G).
group(G-1) :- group(G), G > 1.
 
week(W) :- weeks(W).
week(W-1) :- week(W), W > 1.

0{ plays(P,W,G)}1 :- player(P), week(W), group(G).

:- plays(P,W,G1), plays(P,W,G2), G1 != G2.
:- player(P), week(W), not plays(P, W, _).

0{ plays(P,W,G) }1 :- player(P), week(W), group(G), players_per_group(PL).
:- players_per_group(PL), PL+1 #count {P: plays(P,W,G)}, week(W), group(G) .

rightNumber :- players_per_group(2), plays(P1,W,G), plays(P2,W,G), P1<P2.
:- not rightNumber.

rightNumber :- players_per_group(3), plays(P1,W,G), plays(P2,W,G), plays(P3,W,G), P1<P2, P2<P3.
rightNumber :- players_per_group(4), plays(P1,W,G), plays(P2,W,G), plays(P3,W,G), plays(P4,W,G), P1<P2, P2<P3, P3<P4.
rightNumber :- players_per_group(5), plays(P1,W,G), plays(P2,W,G), plays(P3,W,G), plays(P4,W,G),  plays(P5,W,G), P1<P2, P2<P3, P3<P4, P4<P5.

%%p :- players_per_group(PL), PL #count {P: plays(P,W,G)}, week(W), group(G) .
%%:- not p .


meets(P1,P2,W) :- plays(P1,W,G), plays(P2,W,G), P1 < P2.

:- meets(P1,P2,W1), meets(P1,P2,W2), W1 != W2.
:- meets(P1,P2,W1), meets(P2,P1,W2), W1 != W2.
