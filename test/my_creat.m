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
le_pop=6;
xmax=5;
xmin=-5;
table=[1;4;16;64;4^4;4^5];
totalPopulationSize = sum(options.PopulationSize);
n = NVARS;
pop = cell(totalPopulationSize,1);
for i = 1:totalPopulationSize
    temp(1)=randi(4^le_pop);
    temp(2)=randi(4^le_pop);
    temp=temp-1;
    tcode=zeros(n,le_pop);
    detmp=de2bi(temp,[],4);
    tcode(:,1:size(detmp,2))=detmp;
%     xtemp=xmin+(xmax-xmin)/4^le_pop.*temp;
    pop{i} = tcode;
%     temp=temp';
%     pop{i}=temp(:)';
end

