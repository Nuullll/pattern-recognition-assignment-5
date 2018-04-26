% training weight vector
addpath '../utilities';

%% dataset
% use struct for scalability
% circles: (1,1) (2,0) (2,1) (0,2) (1,3)
X = [1,2,2,0,1;
    1,0,1,2,3];

% triangles: (-1,2) (0,0) (-1,0) (-1,-1) (0,-2)
Y = [-1,0,-1,-1,0;
    2,0,0,-1,-2];

% figure configuration
figure(1);
xlim([-3 4]);
ylim([-3 4]);
plot_dataset(X(1,:),X(2,:),Y(1,:),Y(2,:));


%% training
% expand sample vector
X_ = [X;ones(1,size(X,2))];
Y_ = [Y;ones(1,size(Y,2))];

Z = [X_,-Y_];

% initialize weight vector
w = max(Z(:))*rand(size(Z,1),1);
r = 1;  % learning rate
N = 1000;    % iteration counts
i = 1;  % index of sample Z

for n=1:N
    z = Z(:,i);
    if w'*z > 0
        i = mod(i,size(Z,2)) + 1;
    else
        w = w + r*z;
    end
end

%% plot
hold on;
ezplot(@(x,y)(w(1)*x+w(2)*y+w(3)));
hold off;