function capacity = ralychannel(SNR)

h = raylrnd(1/sqrt(2),[1,1000000]);%生成E(h^2) = 1的瑞利分布随机数
c = zeros(1,length(h));
%SNR = 20;

for i = 1:1:length(h)
    c(1,i) = log2(1+h(1,i)*SNR);
end

capacity = mean(c);

end