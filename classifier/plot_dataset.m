function plot_dataset( varargin )

hold on;
% show dataset
scatter(varargin{1:2}, 100, 'r', 'filled');
scatter(varargin{3:4}, 100, 'b^', 'filled');
hold off;

end

