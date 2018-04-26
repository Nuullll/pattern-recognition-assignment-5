% find classifier functions to distinguish circles and triangles
addpath 'classifiers';
addpath '../utilities';

%% dataset
% use struct for scalability
% circles: (1,2) (2,1) (2,3) (3,2)
circles.x1 = [1,2,2,3];
circles.x2 = [2,1,3,2];

% triangles: (1,1) (1,3) (2,2) (3,1) (3,3)
triangles.x1 = [1,1,2,3,3];
triangles.x2 = [1,3,2,1,3];

% figure configuration
figure(1);
xlim([0 4]);
ylim([0 4]);
plot_dataset(circles.x1,circles.x2,triangles.x1,triangles.x2);


%% classfier functions
sample = 0:0.001:4;
[X,Y] = meshgrid(sample);

classifier = @parity;
classifier = @abs_hyperbola;
classifier = @two_lines;

Z = classifier(X,Y);

figure(2);
xlim([0 4]);
ylim([0 4]);
surf(X,Y,Z-1,'linestyle','none');
colormap(gray);
view(2);

plot_dataset(circles.x1,circles.x2,triangles.x1,triangles.x2);

