function H = generate_channel_matrix(N,M)
%N：发射天线个数
%M：接收天线个数
H = raylrnd(1/sqrt(2),M,N);

end