field = VectorPlot[{1, P/20*(1 - P/2) - 0.1*P^2/(3 + P^2)}, {t, 0, 50}, {P, 0, 5}, VectorScale -> {0.05, 0.8, 1 &},
VectorStyle -> Black, FrameStyle -> Gray, Background -> LightGray, FrameLabel -> {t, P}, PlotLegends -> {"time", "Population"}, DisplayFunction -> Identity];
n1 = NDSolve[{P'[t] == P[t]/20 *(1-P[t]/2)-0.1*P[t]^2 /(3+P[t]^2), P[0] == 0.2}, P[t], {t,0,50}];
n2 = NDSolve[{P;'[t] == P[t]/20 *(1-P[t]/2)-0.1*P[t]^2 /(3+P[t]^2), P[0] == 1}, P[t], {t,0,50}]
n3 = NDSolve[{P'[t] == P[t]/20 *(1-P[t]/2)-0.1*P[t]^2 /(3+P[t]^2), P[0] == 3}, P[t], {t,0,50}];
n4 = NDSolve[{P'[t] == P[t]/20 *(1-P[t]/2)-0.1*P[t]^2 /(3+P[t]^2), P[0] == 4}, P[t], {t,0,50}];
solplot = Plot[Evaluate[P[t]/.{n1,n2,n3,n4}], {t,0,50}, PlotStyle->Thickness[0.01]];
Show[solplot,field]s');