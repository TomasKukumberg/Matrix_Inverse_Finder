    function [fit] = matrixFit(pop, inputMat)
%matrixFit ranks each matrix 
% result = matrixFit(pop, inputMat)
% result - ranks each matrix (1 x n matrix)
% pop - population with n rows and 3 columns
% inputMat = matrix you wanna find inverse for
    popSize = size(pop,1);
    fit = zeros( 1, popSize );
    error = 0;
    
    for k = 1:popSize
        tmp = reshape(pop(k,:), [3,3] );
        res = inputMat * tmp;
        error = compareMatrix(res);
        fit(1, k) = error;
    end
end

