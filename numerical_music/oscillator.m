function x = oscillator(freq, fs, dur, A, D, S, R)
    % t = linspace(0, dur, fs * dur + 1)';
    t = (0 : 1/fs : dur)';
    t = t(1 : end-1);

    sine_wave = sin(2 * pi * freq * t);

    total_samples = length(t);
    nA = floor(fs * A);
    nD = floor(fs * D);
    nR = floor(fs * R);
    nS = total_samples - (nA + nD + nR);
    
    attack_env = linspace(0, 1, nA)';
    decay_env = linspace(1, S, nD)';
    sustain_env = S * ones(nS, 1);
    release_env = linspace(S, 0, nR)';
    
    full_envelope = [attack_env; decay_env; sustain_env; release_env];
    
    x = sine_wave .* full_envelope
end
