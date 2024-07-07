function [S, f, t] = spectrogram(signal, fs, window_size)
    [n m] = size(signal);
    num_windows = floor(n / window_size);

    hann_window = hanning(window_size);

    for i = 1:num_windows
        start_idx = (i - 1) * window_size + 1;
        end_idx = start_idx + window_size - 1;

        windowed_signal = signal(start_idx : end_idx) .* hann_window;

        fft_segment = fft(windowed_signal, window_size * 2);

        S(:, i) = abs(fft_segment(1 : window_size));
    end

    f = (0 : window_size - 1)' * fs / window_size / 2;
    t = (0: num_windows - 1)' * (window_size / fs);
end