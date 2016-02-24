D = 1-corr(xw');

xw = mdscale(D,3);
k=3;


plot3(xw(:,1),xw(:,2),xw(:,3),'x')