% Name: Tunar
% Surname: Mammadov
% Group: KKSFU-24
% Date: 2026-09-24

clc; clear; close all;

%% Mandatory Task 
x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-as')
ylabel('F_1 [-o-] i F_2 [-x-]')

%% Complementary Task 
N = 5; 

v = (N+1) : 0.5 : (N+4);

A = [N   N+1 N+2; 
     N+3 N+4 N+5; 
     N+6 N+7 N+8];

a_elem = A(3, 2);
b_block = A(2:3, 1:2);
c_corners = A([1, 3], [1, 3]);

v_sub = v(1:3)'; 
A_concat = [A, v_sub];