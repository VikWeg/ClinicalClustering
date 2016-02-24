[~,I] = sort(idx);

xs = zeros(N,k,K);

for i=1:K;
xs(:,:,i) = xw(I(:,i),:);
end

m = ['x' 'o' '*' '+' '^'];

for j=1:K-1
    figure(j)
    for i1=1:k
        for i2=i1+1:k
            for i3=i2+1:k
            %subplot(10,10,(i1-1)*10+i2)

            hold on
            for jj = 1:j+1
                id = idx(:,j)==jj;
                plot3(xw(id,i1),xw(id,i2),xw(id,i3),m(jj))
            end
            hold off

            title(['K=' num2str(j+1)])
            end
        end
    end
end

clear i j jj

