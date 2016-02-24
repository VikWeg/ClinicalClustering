K=5;

idx = zeros(N,K);

for i=2:K
idx(:,i-1)=kmeans(xw,i);
end

clear i