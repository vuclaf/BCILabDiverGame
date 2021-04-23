clear all;

% gw = gameWindow;
% setup(gw);
% moveDiver(gw, 'up');
menu = startMenu;
run(menu);
dir = getDir(menu);
id = getId(menu);
group = getGroup(menu);
trial = getTrial(menu);
gw = gameWindow(dir, id, group, trial);