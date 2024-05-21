function [x] = gaussJordan(A, b)
    n = length(b)
    Ab = [A, b]
    for k = 1:n
        pivot = Ab(k,k);
        Ab(k,:) = Ab(k,:) / pivot
        for i = 1:n
            if i ~= k
                factor = Ab(i,k)
                Ab(i,:) = Ab(i,:) - factor * Ab(k,:)
            end
        end
    end
    x = Ab(:, n+1);
endfunction

A = [2 1 3 4; -1 3 2 1; 4 2 1 5; 3 -2 4 6];
b = [10; 13; 12; 31];
solution = gaussJordan(A, b);
disp("Solution using Gauss-Jordan method:"); disp(solution);
