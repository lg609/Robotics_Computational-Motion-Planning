%
% TestScript for Assignment 1
%

%% Define a small map
map = false(20);

% Add an obstacle
map (1:5, 6) = true;

% start_coords = [6, 2];
% dest_coords  = [8, 9];

sx = randperm(20);
sy = randperm(20);
dx = randperm(20);
dy = randperm(20);
start_coords = [sx, sy];
dest_coords  = [dx, dy];

map (sx(1):sy(1), dy(1)) = true;
map (dy(1):dy(1), dy(3):dy(8)) = true;
map (sx(1):sy(1), sy(1)) = true;
map (sx(1):sy(1), sy(1)) = true;


%%
close all;
[route, numExpanded] = DijkstraGrid (map, start_coords, dest_coords);
% Uncomment following line to run Astar
[route, numExpanded] = AStarGrid (map, start_coords, dest_coords);
