% Load your sound signal
[y, Fs] = audioread('mysound.wav');

% Define the unit step signal
t = 0:1/Fs:(length(y)-1)/Fs; % Time vector
u = zeros(size(t));         % Initialize unit step signal
u(t >= 0) = 1;              % Set the unit step to 1 for t >= 0

% Perform convolution
convolution_result = conv(y, u, 'full');

% Create the time vector for the convolution result
conv_time = (0:length(convolution_result)-1) / Fs;

% Plot the original sound signal
subplot(3, 1, 1);
plot(t, y);
title('Original Sound Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot the unit step signal
subplot(3, 1, 2);
plot(t, u);
title('Unit Step Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot the convolution result
subplot(3, 1, 3);
plot(conv_time, convolution_result);
title('Convolution Result');
xlabel('Time (s)');
ylabel('Amplitude');

% Adjust the plot for better visualization
subplot(3, 1, 1);
ylim([-max(abs(y)), max(abs(y))]);

subplot(3, 1, 2);
ylim([0, 1.1]);

subplot(3, 1, 3);
ylim([-max(abs(convolution_result)), max(abs(convolution_result))]);

% Display the plots
sgtitle('Convolution of Sound Signal and Unit Step Signal');
