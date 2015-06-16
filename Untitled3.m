clear all;clc
load('usborder.mat','x','y','xx','yy');
plot(x,y,'Color','red'); hold on;


cities = 16;
load('matlab.mat');
plot(locations(:,1),locations(:,2),'bo');

distances = zeros(cities);
for count1=1:cities,
    for count2=1:count1,
        x1 = locations(count1,1);
        y1 = locations(count1,2);
        x2 = locations(count2,1);
        y2 = locations(count2,2);
        distances(count1,count2)=sqrt((x1-x2)^2+(y1-y2)^2);
        distances(count2,count1)=distances(count1,count2);
    end;
end;


FitnessFcn = @(x) my_fitness(x,distances);


my_plot = @(options,state,flag) my_plot(options, ...
    state,flag,locations);


options = gaoptimset('PopulationType', 'custom','PopInitRange', ...
    [1;cities]);


options = gaoptimset(options,'CreationFcn',@my_creat, ...
    'CrossoverFcn',@my_crossover, ...
    'MutationFcn',@my_mutate, ...
    'PlotFcn', my_plot, ...
    'SelectionFcn', @select1, ...
    'Generations',500,'PopulationSize',60, ...
    'StallGenLimit',200,'Vectorized','on');

numberOfVariables = cities;
[x,fval,reason,output] = ga(FitnessFcn,numberOfVariables,options)


displayEndOfDemoMessage(mfilename)
