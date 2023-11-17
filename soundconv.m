% Load the first audio signal 
[audio1, fs1] = audioread('mysound.wav');
% Load the second audio signal
[audio2, fs2] = audioread('mysound.wav');

% Ensure both audio signals have the same sample rate (if needed)
if fs1 ~= fs2
    error('Sample rates of the two audio signals must match.');
end

% Perform convolution of the two audio signals
convolution_result = conv(audio1, audio2);

% Normalize the convolution result to avoid clipping
convolution_result = convolution_result / max(abs(convolution_result));

% Save the convolution result as a new audio file (replace 'output.wav' with your desired filename)
audiowrite('output.wav', convolution_result, fs1);

% Plot the original audio signals and the convolution result
figure;
subplot(3, 1, 1);
plot(audio1);
title('Audio Signal 1');
xlabel('Sample');
ylabel('Amplitude');
subplot(3, 1, 2);
plot(audio2);
title('Audio Signal 2');
xlabel('Sample');
ylabel('Amplitude');
subplot(3, 1, 3);
plot(convolution_result);
title('Convolution Result');
xlabel('Sample');
ylabel('Amplitude');

% Display the plots
sgtitle('Convolution of Two Audio Signals');

% Play the convolution result (optional)
sound(convolution_result, fs1);