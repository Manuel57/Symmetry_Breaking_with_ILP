%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Extra Predicates
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
max_hole(M) :- hole(M), not hole(M+1).
max_pigeon(P) :- pigeon(P), not pigeon(P+1).

next_pigeon(P-1,P) :- P>1, max_pigeon(P).
next_pigeon(P-1,P) :- next_pigeon(P,_), P>1.

assignGEQ(P,H) :- assign(P,H).
assignGEQ(P,H) :- assignGEQ(P,H+1), H>0.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SBCs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Iteration n None
%% From files: p2_h3.lp - p3_h3.lp - p3_h4.lp - p3_h5.lp - p3_h6.lp - p4_h4.lp - p4_h5.lp - p5_h5.lp
 :- assignGEQ(V1,V3), next_pigeon(V1,V2), not assignGEQ(V2,V3).

