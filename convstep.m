% Define the time axis
t = -5:0.1:5;
% Define the unit step functions u(t)
u1 = @(t) 1.*(t >= 0);  % Unit step function for t >= 0
u2 = @(t) 1.*(t >= 0);  % Unit step function for t >= 0
% Calculate the convolution of the unit step functions
convolution = conv(u1(t), u2(t), 'same');
% Plot the original functions and the convolution result
subplot(3, 1, 1);
plot(t, u1(t), 'b', 'LineWidth', 2);
title('Unit Step Function u1(t)');
xlabel('t');
ylabel('Amplitude');
grid on;
subplot(3, 1, 2);
plot(t, u2(t), 'r', 'LineWidth', 2);
title('Unit Step Function u2(t)');
xlabel('t');
ylabel('Amplitude');
grid on;
subplot(3, 1, 3);
plot(t, convolution, 'g', 'LineWidth', 2);
title('Convolution of u1(t) and u2(t)');
xlabel('t');
ylabel('Amplitude');
grid on;
% Adjust the plot to make it look better
sgtitle('Convolution of Unit Step Functions');
