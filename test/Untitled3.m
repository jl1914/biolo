clear all;clc
load('usborder.mat','x','y','xx','yy');
plot(x,y,'Color','red'); hold on;


cities = 16;
load('matlab.mat');
plot(locations(:,1),locations(:,2),'bo');



FitnessFcn = @(x) my_fitness(x,distances);


my_plot = @(options,state,flag) my_plot(options, ...
    state,flag,locations);


options = gaoptimset('PopulationType', 'custom','PopInitRange', ...
    [1;cities]);


options = gaoptimset(options,'CreationFcn',@my_creat, ...
    'CrossoverFcn',@my_crossover, ...
    'MutationFcn',@my_mutate, ...
    'PlotFcn', my_plot, ...
    'Generations',500,'PopulationSize',60, ...
    'StallGenLimit',200,'Vectorized','on');

numberOfVariables = cities;
[x,fval,reason,output] = ga(FitnessFcn,numberOfVariables,options)


displayEndOfDemoMessage(mfilename)
