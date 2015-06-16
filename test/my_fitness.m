function scores = my_fitness(x)
%TRAVELING_SALESMAN_FITNESS  Custom fitness function for TSP. 
%   SCORES = TRAVELING_SALESMAN_FITNESS(X,DISTANCES) Calculate the fitness 
%   of an individual. The fitness is the total distance traveled for an
%   ordered set of cities in X. DISTANCE(A,B) is the distance from the city
%   A to the city B.

%   Copyright 2004-2007 The MathWorks, Inc.
%   $Revision: 1.1.6.2 $  $Date: 2012/08/21 00:26:35 $
xmax=5;
le_pop=6;
xmin=-5;
table=[1;4;16;64;4^4;4^5];

xtemp=xmin+(xmax-xmin)/4^le_pop.*(x{1}*table);
pop=xtemp';
scores=10.0 * size(pop,2) + sum(pop .^2 - 10.0 * cos(2 * pi .* pop),2);
