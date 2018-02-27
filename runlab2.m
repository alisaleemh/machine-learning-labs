XA30=irisdata_features(1:15,:);
XB30=irisdata_features(51:75,:);
XC30=irisdata_features(101:115,:);

XA70=irisdata_features(16:50,:);
XB70=irisdata_features(76:100,:);
XC70=irisdata_features(116:150,:);

XA100=irisdata_features(1:50,:);
XB100=irisdata_features(51:100,:);
XC100=irisdata_features(101:150,:);

lab2(XA30, XB30 , XA70, XB70, 0.01, 'Xa vs Xb - 30% Training Set');
title('Xa vs Xb - 30% Training Set');
xlabel('Sepal Width');
ylabel('Petal Length');

lab2(XA70, XB70, XA30, XB30 ,0.01, 'Xa vs Xb - 70% Training Set');
title('Xa vs Xb - 70% Training Set');
xlabel('Sepal Width');
ylabel('Petal Length');

lab2(XC30, XB30 , XC70, XB70, 0.01, 'Xc vs Xb - 30% Training Set');
title('Xc vs Xb - 30% Training Set');
xlabel('Sepal Width');
ylabel('Petal Length');

lab2(XC70, XB70, XC30, XB30 ,0.01, 'Xc vs Xb - 70% Training Set');
title('Xc vs Xb - 70% Training Set');
xlabel('Sepal Width');
ylabel('Petal Length');


lab2(XA100, XB100, XA100, XB100 ,1, 'Xa vs Xb - 1 LR');
title('Xa vs Xb - 1 LR');
xlabel('Sepal Width');
ylabel('Petal Length');


lab2(XA100, XB100, XA100, XB100 ,0.01, 'Xa vs Xb - A=[0, 5, 5] Initial');
title('Xa vs Xb - A=[0, 0, 1] Initial');
xlabel('Sepal Width');
ylabel('Petal Length');








