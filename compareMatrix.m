function [error] = compareMatrix(actual)
%compareMatrix Compares a 3x3 matrix with a 3x3 identity matrix
    expected =       [1 0 0;
                      0 1 0;
                      0 0 1];
    error = 0;
    
    for k = 1:3
        for m = 1:3
            if(actual(k,m) ~= expected(k,m) ) 
                error = error + abs( actual(k,m) - expected(k,m) );
            end
        end
    end
end

