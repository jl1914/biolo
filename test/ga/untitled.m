
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
nvars=2;
options = gaoptimset;
%% Modify options setting
options = gaoptimset(options,'Display', 'off');
options = gaoptimset(options,'PlotFcns', { @gaplotrange });
[x,fval,exitflag,output,population,score] = ...
ga(@rastriginsfcn,nvars,[],[],[],[],[],[],[],[],options);
