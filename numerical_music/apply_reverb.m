function signal = apply_reverb(signal, impulse_response)
    impulse_response_mono = stereo_to_mono(impulse_response);
    convoluted_signal = fftconv(signal, impulse_response_mono);
    signal = convoluted_signal / max(abs(convoluted_signal));
end
