clc;
clear;
x = [2, 5, 7, 10, 12];
fx = [18, 180, 448, 1210, 2028];
x_to_interpolate = 6;

estimated_f = 0;
n = length(x);

for i = 1:n
    L = 1;
    for j = 1:n
        if j ~= i
            L = L * (x_to_interpolate - x(j)) / (x(i) - x(j));
        end
    end
    estimated_f = estimated_f + L * fx(i);
end
fprintf('Estimated f(6): %.2f\n', estimated_f);