function A=lab2(XA,XB,TA, TB, LR, header)
%XA = samples from W1
%XB = samples from W2
%LR = Learning Rate
disp(header);
A=[0,0,1];

%%% Augmenting and Normalizing XA and XB
sizeA=size(XA,1);
sizeB=size(XB,1);
sizeTotal=size(XA,1)+size(XB,1);

% Generate a matrix of 1's of sizeTotal rows and 3 columns
Y=ones(sizeTotal, 3);

% Filling in Y based of XA and XB
Y(1:sizeA,2:3)=XA(:,2:3);
Y(sizeA+1:sizeTotal,2:3)=-1*XB(:,2:3);
Y(sizeA+1:sizeTotal,1)=-1*Y(sizeA+1:sizeTotal,1);


% Transpose Y
Y=Y.';

J=0;


for iteration = 1:300
AY=A*Y;

for i = 1:sizeTotal
    if AY(1,i) <= 0
        J=J-Y(:,i);
    end
end

if J == 0
    disp('J Value - Perception Criterion');
    disp(prevJ);
    break
else
    A=A-LR*J.';
    prevJ=J;
    if iteration == 300
        disp('J Value - Perception Criterion');
        disp(prevJ)
    end
    J=0;
end
end
disp('Iteration');
disp(iteration);
disp('A');
disp(A);
figure;


for i = 1:size(TA,1)
    plot(TA(i,2),TA(i,3),'ob')
    hold on;
end
for i = 1:size(TB,1)
    plot(TB(i,2),TB(i,3),'xr')
    hold on;
end

x=1:6;
plot(x,(-1*A(2)/A(3))*x+A(1)/A(3))
hold off;
end

