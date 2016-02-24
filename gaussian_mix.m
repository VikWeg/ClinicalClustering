gm = cell(1,5);

for i=2:6;
gm{i-1} = fitgmdist(xw,i,'RegularizationValue',0.01,'Start','plus','Replicates',10);
idx(:,i-1) = cluster(gm{i-1},xw);
end

