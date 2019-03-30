%%
% *Quetion 4 function*
% 
% *A MATLAB function that performs a piecewise linear brightness and
% contrast adjustment on a monochrome image. The function takes aa arguments: a monochrome image, the c coefficient (slope), and the b coefficient(offset).*
function [y] = piecewiseFunction(I, c, b)
temp = immultiply(I,c);
y = imadd(temp, b);

