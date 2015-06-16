
%% This is an auto generated MATLAB file from Optimization Tool.
nvars=2;
StallGenLimit_Data=inf;
%% Start with the default options
options = gaoptimset;
%% Modify options setting
options = gaoptimset(options,'PopulationType', 'custom');
options = gaoptimset(options,'PopulationSize', 100);
options = gaoptimset(options,'StallGenLimit', StallGenLimit_Data);
options = gaoptimset(options,'CreationFcn', @my_creat);
options = gaoptimset(options,'CrossoverFcn', @cross2);
options = gaoptimset(options,'MutationFcn', @my_mutate);
options = gaoptimset(options,'Display', 'off');
options = gaoptimset(options,'PlotFcns', { @gaplotbestf});
[x,fval,exitflag,output,population,score] = ...
ga(@my_fitness,nvars,[],[],[],[],[],[],[],[],options)
