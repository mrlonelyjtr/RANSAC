clear; close all; clc

% 14 samples
samples = [-2 0; 0 0.9; 2 2.0; 3 6.5; 4 2.9; 5 8.8; 6 3.95; 8 5.03; 10 5.97; 12 7.1; 13 1.2; 14 8.2; 16 8.5; 18 10.1];

% intialize the parameters
distance = 0.1;
inliers = 10;
iterators = 10;

% get the final fitting line
best_result = ransac(samples, distance, inliers, iterators);
k = (best_result(2, 2) - best_result(1, 2)) / (best_result(2, 1) - best_result(1, 1));
b = best_result(1, 2) - k * best_result(1, 1);

% visualize the results of samples and fitting line
figure(1);
axis([-2 18 0 12]), hold on;
plot(samples(:, 1), samples(:, 2), 'bo');
plot([-2 18], [(-2 * k + b) (18 * k + b)], 'r-');
legend('samples','final fitting result'); hold off;

% show the results of 2 points and linear equation
disp('The coordinates of 2 points are ');
disp(best_result);
disp('The linear equation is ');
disp(['y = ', num2str(k), 'x + ', num2str(b)]);