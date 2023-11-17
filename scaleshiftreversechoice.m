% Generate a random signal with user-defined length
signal_length = input('Enter the length of the random signal: ');
random_signal = rand(1, signal_length);  % Generates a random signal between 0 and 1

% Take user input for scaling factor
scale_factor = input('Enter the scaling factor: ');

% Take user input for shifting factor
shift_factor = input('Enter the shifting factor: ');

% Take user input for whether to reverse the signal (0 for no, 1 for yes)
reverse_signal = input('Reverse the signal? (0 for no, 1 for yes): ');

% Initialize an empty vector for the scaled, shifted, and reversed signal
scaled_shifted_signal = zeros(1, signal_length);

% Scale and shift the signal using a for loop
for i = 1:signal_length
    scaled_shifted_signal(i) = random_signal(i) * scale_factor + shift_factor;
end

% Reverse the signal if requested
if reverse_signal == 1
    scaled_shifted_signal = fliplr(scaled_shifted_signal);
end

% Display the original random signal and the modified signal
subplot(2, 1, 1);
plot(random_signal);
title('Original Random Signal');
xlabel('Sample Index');
ylabel('Amplitude');

subplot(2, 1, 2);
plot(scaled_shifted_signal);
title('Scaled, Shifted, and Reversed Signal');
xlabel('Sample Index');
ylabel('Amplitude');

% Adjust plot display
if reverse_signal == 1
    sgtitle(['Scaling by ' num2str(scale_factor) ', Shifting by ' num2str(shift_factor) ', and Reversed']);
else
    sgtitle(['Scaling by ' num2str(scale_factor) ' and Shifting by ' num2str(shift_factor)]);
end