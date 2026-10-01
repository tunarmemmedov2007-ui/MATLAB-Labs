clc; clear; close all;

% Task 1 - a) 
x = -pi : 0.1 : pi;

f1 = tan(sin(x)) + sin(tan(x));

figure(1);
plot(x, f1, 'y', 'LineWidth', 1.5);
grid on;
title('Task 1a: f(x) = tan(sin(x)) + sin(tan(x))');
xlabel('x');
ylabel('f(x)');
axis([-pi pi -5 5]); % Axis l

% Task 1 - b & c) 

figure(2);

f2 = exp(-0.5 * x); 
f3 = sin(x); 


semilogy(x, f2, 'r-', 'LineWidth', 1.5); hold on;
semilogy(x, abs(f3), 'b--', 'LineWidth', 1.5); 
grid on;

title('Task 1b: Functions with Logarithmic Y-axis');
xlabel('x (linear scale)');
ylabel('f(x) (logarithmic scale)');
legend('f(x) = e^{-0.5x}', 'f(x) = |sin(x)|', 'Location', 'northeast');

% Task 2 
N_rows = 6;
M_cols = 4;
A = rand(N_rows, M_cols); 

% a) 
figure(3);
area(A);
grid on;
title('Task 2a: Filled Area Plot of N x M Matrix');
xlabel('Row Index');
ylabel('Stacked Values');
xlim([1 N_rows]);
ylim([0 max(sum(A, 2))*1.1]);

% b) 
figure(4);
mesh(A);
grid on;
title('Task 2b: Wireframe Mesh Plot');
xlabel('Column Index (M)');
ylabel('Row Index (N)');
zlabel('Values');
xlim([1 M_cols]);
ylim([1 N_rows]);
zlim([0 1]);

% Complementary Task 
% Task 3 
t = 0 : 0.001 : 1.5;
A_amp = 5; f = 2; sigma = 0.8;
U1 = 3; U2 = 1.5;

s = A_amp * cos(2 * pi * f * t);
n = sigma * randn(size(t));
total_signal = s + n; 


filtered_signal = total_signal;
filtered_signal(abs(filtered_signal) < U2) = 0;


figure(5);

% --- a) 
subplot(2, 1, 1);
plot(t, total_signal, '-.b', 'LineWidth', 1); hold on; 
plot(t, filtered_signal, '-y', 'LineWidth', 1.2);    

yline(U1, 'g', 'LineWidth', 1.5, 'Label', 'U1');
yline(-U1, 'g', 'LineWidth', 1.5);
yline(U2, 'k--', 'LineWidth', 1, 'Label', 'U2');
yline(-U2, 'k--', 'LineWidth', 1);

grid on;
title('Original and Filtered Signals with Thresholds');
xlabel('Time (s)', 'Color', 'b', 'FontSize', 12);
ylabel('Voltage (V)', 'Color', 'b', 'FontSize', 12);
legend('Original Signal', 'Filtered Signal', 'Threshold U1', '', 'Threshold U2', 'Location', 'northeast');

% --- b)
subplot(2, 1, 2);

exceed_mask = total_signal > U1;
t_exceed = t(exceed_mask);
s_exceed = total_signal(exceed_mask);

stem(t_exceed, s_exceed, 'm', 'LineWidth', 1); hold on;

[max_val, max_idx] = max(total_signal);
[min_val, min_idx] = min(total_signal);

plot(t(max_idx), max_val, 'rs', 'MarkerSize', 8, 'MarkerFaceColor', 'r');

plot(t(min_idx), min_val, '^', 'Color', [0.5 0 0.5], 'MarkerSize', 8, 'MarkerFaceColor', [0.5 0 0.5]);

grid on;
