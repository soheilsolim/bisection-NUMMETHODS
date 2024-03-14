% soheilsolim
clc;
clear;
close all;
format long
% bisection
 f = @(x) (x+cos(x));
 a = 0 ;
 b = -1 ;
x = (a+b)/2;

i = 1 ;
while abs(f(x)) > 10^-6
    x = (a+b)/2;
    % if x&a<0
    if f(a)*f(x) < 0
        b = x ;
    % if x&b<0    
    else
        a = x ;   
    end

    % answer table 
    STR = ['n = ', num2str(i), ', x = ' ,num2str(x), ', f(x) = ' ...
    ,num2str(f(x))];
    disp(STR)
    i=i+1;
    
    
end