clc; clear; close all;

% PART 1: MANDATORY TASK (6 Points)

% --- Task 1: Vectors ---
% a) 
a = (-pi : 0.7 : 2*pi)';

% b)
b = cos(a);

% c) 
c_vec = a .^ b;

% d) 
c_row = c_vec';
disp('=== Task 1: Resulting Row Vector ===');
disp(c_row);


% --- Task 2: Matrices ---
% a) 
X = [exp(3),    exp(-1i*pi), log(1);
     log(pi),   -2,          -sin(pi)];

% b) 
X_lin = [X(2,1)^2, X(1,3), X(2,3)^2];
X_extended = [X; X_lin]; 

% c)
det_X = det(X_extended);

disp('=== Task 2: Extended Matrix and Determinant ===');
disp('Extended Matrix X:');
disp(X_extended);
disp('Determinant:');
disp(det_X);


% --- Task 3: Practical Applications ---
A_amp = 4.5;
f = 6;
sigma = 1;
U1 = 3;
U2 = 1.5;

t = 0 : 0.001 : 1.5;

s = A_amp * cos(2 * pi * f * t);
n = sigma * randn(size(t));
total_signal = s + n;

% a) 
selected_samples = total_signal(total_signal > U1);

% b)
filtered_signal = total_signal;
filtered_signal(abs(filtered_signal) < U2) = 0;

% c) 
num_unfiltered = length(total_signal);

% d) 
num_selected_a = length(selected_samples);

% e) 
min_filtered = min(filtered_signal);
max_filtered = max(filtered_signal);

disp('=== Task 3: Signal Processing Results ===');
disp(['Unfiltered Signal Sample Count: ', num2str(num_unfiltered)]);
disp(['Samples Exceeding U1 (Count): ', num2str(num_selected_a)]);
disp(['Filtered Signal Min Voltage: ', num2str(min_filtered)]);
disp(['Filtered Signal Max Voltage: ', num2str(max_filtered)]);


% PART 2: COMPLEMENTARY TASK (4 Points)


disp(' ');
disp('=== PART 2: COMPLEMENTARY TASK ===');

A = input('Enter vector A (e.g., [2 5 8 10]): ');

if length(A) < 2
    error('Please enter a vector with at least 2 elements, e.g., [2 5 8 10]');
else
    first_part = repmat(A(1), 1, 4);
    last_part  = repmat(A(end), 1, 4);

    mask = true(size(A));
    mask(1) = false;
    mask(end) = false;
    middle_part = A(mask);

    B = [first_part, middle_part, last_part];

    disp('vector B is:');
    disp(B);
end