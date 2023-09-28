%% Assignment 1 
% Testing for causality, linearity, time variance, and memory of each system
% All functions assume zero initial conditions before first time step value, and same for x after the last time step value 

%% System 1 
clc
clear 
close all

fprintf('SYSTEM 1:\n\n');
[f, f1, f2] = linearity(@system1, -2:2, [0 0 1 0 0], [1 0 0 0 0]);
[g] = causality(@system1, -2:2, [0 0 0 0 1]);
[h] = timeinvarience(@system1, -4:4, [0 0 1 0 0 0 0 0 0],5);
[k] = mymemory(@system1, -3:3, [0 0 1 0 0 0 0]);

%% System 2
clc
clear 
close all

fprintf('SYSTEM 2:\n\n');
[f, f1, f2] = linearity(@system2, -2:2, [0 0 0 0 1], [1 0 0 0 0]);
[g] = causality(@system2, -2:2, [0 1 0 0 0]);
[h] = timeinvarience(@system2, -4:4, [1 0 0 0 0 0 0 0 0],5);
[k] = mymemory(@system2, -3:3, [0 1 0 0 0 0 0]);

%% System 3
clc
clear 
close all

fprintf('SYSTEM 3:\n\n');
[f, f1, f2] = linearity(@system3, -2:2, [0 0 1 0 0], [1 0 0 0 0]);
[g] = causality(@system3, -2:2, [0 0 0 0 1]);
[h] = timeinvarience(@system3, -4:4, [0 0 1 0 0 0 0 0 0],5);
[k] = mymemory(@system3, -3:3, [0 0 1 0 0 0 0]);
