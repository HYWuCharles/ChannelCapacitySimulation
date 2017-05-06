function capactiy = alamouti(SNR)

C  = zeros(1,3000);
SNR_D = 10^(0.1*SNR);
for i = 1:1:3000
    H = generate_channel_matrix(2,1);
    fs = norm(H,'fro');
    C(1,i) = log2(1 + SNR_D*fs^2/2);
end

capactiy = mean(C);