function pop = my_creat(NVARS,FitnessFcn,options)
%CREATE_PERMUTATIONS Creates a population of permutations.
%   POP = CREATE_PERMUTATION(NVARS,FITNESSFCN,OPTIONS) creates a population
%  of permutations POP each with a length of NVARS. 
%
%   The arguments to the function are 
%     NVARS: Number of variables 
%     FITNESSFCN: Fitness function 
%     OPTIONS: Options structure used by the GA

%   Copyright 2004-2007 The MathWorks, Inc.
%   $Revision: 1.1.6.2 $  $Date: 2012/08/21 00:25:37 $
le_pop=2;
xmax=5;
xmin=-5;

totalPopulationSize = sum(options.PopulationSize);
n = NVARS;
pop = cell(totalPopulationSize,1);
for i = 1:totalPopulationSize
    pop{i} = randperm(n);
    temp=  de2bi(pop{i},[],4,'left-msb') ;
    pop{i}=temp';
%     temp=temp';
%     pop{i}=temp(:)';
end

