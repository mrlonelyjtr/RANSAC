clear; close all; clc

% 14 samples
samples = [-2 0; 0 0.9; 2 2.0; 3 6.5; 4 2.9; 5 8.8; 6 3.95; 8 5.03; 10 5.97; 12 7.1; 13 1.2; 14 8.2; 16 8.5; 18 10.1];

figure(1);
axis([-2 18 0 12]), hold on;
plot(samples(:, 1), samples(:, 2), 'bo');
legend('samples'); hold off;