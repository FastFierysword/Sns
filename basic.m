close all;
clc;
clear all;



% Define the time vector
t = -5:0.1:5;

% Unit Ramp Function
u_ramp = t .* (t >= 0);

% Unit Impulse (Delta) Function
delta = zeros(size(t));
delta(t == 0) = 1;

% Unit Impulse (Impulse) Function
impulse = zeros(size(t));
impulse(t == 0) = Inf;

% Exponential Function
a = 2; % Adjust the value of 'a' as needed
exponential = exp(a * t);

% Plotting
figure;

subplot(2,2,1);
plot(t, u_ramp, 'r', 'LineWidth', 2);
title('Unit Ramp Function');
xlabel('t');
ylabel('u(t)');

subplot(2,2,2);
stem(t, delta, 'b', 'LineWidth', 2);
title('Unit Impulse (Delta) Function');
xlabel('t');
ylabel('\delta(t)');

subplot(2,2,3);
stem(t, impulse, 'g', 'LineWidth', 2);
title('Unit Impulse (Impulse) Function');
xlabel('t');
ylabel('impulse(t)');

subplot(2,2,4);
plot(t, exponential, 'm', 'LineWidth', 2);
title('Exponential Function');
xlabel('t');
ylabel('e^{at}');

sgtitle('Basic Functions');

% Adjust the figure layout
set(gcf, 'Position', get(0, 'Screensize'));
