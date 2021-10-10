X=iris_dataset;
figure;
plot(X(1,:),X(2,:),"*")
m=mean(X,2);
Xcen=X-m*ones(1,150);
C=1/150*Xcen*Xcen';
[V,D]=eig(C);
[~,inx]=sort(diag(D),'descend');%sort
Wpca=V(:,inx(1))%Wpca
Xdim=Wpca'*X;
figure;
plot(Xdim(1,:),Xdim(2,:),"+")

