function signal = low_pass(signal, fs, cutoff_freq)
    X = fft(signal);

    n = length(signal);
    f = (0 : n - 1)' * fs / n;

    mask = f < cutoff_freq;

    Y = X .* mask;

    filtered_signal = ifft(Y);

    signal = (filtered_signal / max(abs(filtered_signal)));
end
