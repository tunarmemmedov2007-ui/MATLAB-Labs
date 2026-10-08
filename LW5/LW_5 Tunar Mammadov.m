clc; clear; close all;

% Task 1
x_vals = 0:0.01:2;

f_vals = sin(2 * pi * x_vals);

% a) 
signal_data = struct();
signal_data.title = 'Signal f(x) = sin(2\pix)';  
signal_data.signal = f_vals;                      
signal_data.x = x_vals;                         

% b) 
figure(1);
plot(signal_data.x, signal_data.signal, 'LineWidth', 2, 'Color', 'b');
grid on;

% Task 2
disp('--- Task 2 Started ---');

while true
    m = input('Enter value for m: ');
    n = input('Enter value for n: ');
    
    if m == n
        disp('m and n are equal. Program terminated.');
        break;
    end
    
    if m > n
        larger = m;
        smaller = n;
    else
        larger = n;
        smaller = m;
    end
    
    result = larger - smaller;
    while result > 0
        last_positive = result;
        result = result - smaller;
    end
    
    disp(['Final positive subtraction result: ', num2str(last_positive)]);
    disp('-----------------------------------');
end

% Complementary Task
disp('--- Complementary Task Started ---');

arr1 = [];
arr2 = [];

while true
    val1 = round(rand * 3);
    val2 = round(rand * 5);
    
    arr1 = [arr1, val1];
    arr2 = [arr2, val2];
    
    if val1 == val2
        disp(['Equal number found: ', num2str(val1), '. Loop finished!']);
        break;
    end
end

figure(2);
plot(arr1, '-o', 'LineWidth', 1.5, 'DisplayName', 'round(rand*3)');
hold on;
plot(arr2, '-s', 'LineWidth', 1.5, 'DisplayName', 'round(rand*5)');
grid on;

