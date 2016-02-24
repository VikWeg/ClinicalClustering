x = dlmread('cluster_data.dat');

%x = x(:,[1 4 5 6 7 8]);

N = size(x,1);
k = size(x,2);

mean = (1/N)*sum(x);

shift = x - repmat(mean,N,1);

sig = zeros(k,k);
for i=1:N
    sig = sig + shift(i,:)'*shift(i,:);
end
sig = (1/(N-1))*sig;

[U,L] = eig(sig);

L2 = ones(k,1)./sqrt(diag(L));
L2 = diag(L2);

xw = L2*U'*shift';
xw = xw';

clear mean shift sig U L L2 i;