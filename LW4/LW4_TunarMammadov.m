clc; clear; close all;

[X, Y] = meshgrid(-2:0.05:2, -2:0.05:2);

Z1 = sin(abs(X + Y) / 20) .* exp(-abs(X + Y));

figure(1);
surf(X, Y, Z1);
colormap('parula');       
shading interp;          
view(30, 30);             

grid on;


% Task 1b 
r = linspace(0, 1, 50);
theta = linspace(0, 2*pi, 100);
[R, Theta] = meshgrid(r, theta);

X_polar = R .* cos(Theta);
Y_polar = R .* sin(Theta);

Z2 = 1 - 2*(X_polar.^2) - 3*(Y_polar.^2);

figure(2);
surf(X_polar, Y_polar, Z2);
colormap('jet');          
shading faceted;          
view(78, 30);             

grid on;

% Complementary Task 
[X3, Y3] = meshgrid(-2:0.05:2, -2:0.05:2);

Z3 = 1 - (X3.^2 + Y3.^2);

figure(3);
surf(X3, Y3, Z3, 'FaceColor', 'red', 'EdgeColor', 'none');
hold on;

camlight('left');
lighting gouraud;

grid on;
