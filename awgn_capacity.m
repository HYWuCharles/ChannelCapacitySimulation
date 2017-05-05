function capacity = awgn_capacity(SNR)

SNR_D = 10^(0.1*SNR);
capacity = log2(1+SNR_D);

end