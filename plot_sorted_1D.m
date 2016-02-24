[~,I] = sort(idx);

xs = zeros(N,k,K);

for i=1:K;
xs(:,:,i) = xw(I(:,i),:);
end

m = ['x' 'o' '*' '+' '^'];


for j=1:K-1
    figure(j)
    for i1=1:k
            subplot(4,3,i1)

            hold on
            s=0;
            for jj = 1:j+1
                id = idx(:,j)==jj;
                plot(s+1:s+sum(id),xw(id,i1),m(jj))
                s = s+sum(id);
            end
            hold off

            title(['K=' num2str(j+1)])
    end
end


clear i j

