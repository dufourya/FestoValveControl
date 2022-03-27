%% Test of Wago "object'

%% Create object and initiate communication
clear('wago');
wObj = wagoNModbus('192.168.1.2', ones(1, 16), false);

%% All valves off
wObj.setValves([0:15], zeros(1, 16));
[err, desc] = wObj.error();
disp([num2str(err) ': ' desc]);

%% All valves on
wObj.setValves([0:15], ones(1, 16));
[err, desc] = wObj.error();
disp([num2str(err) ': ' desc]);

%% Test speed
tic;
for ii = 1:100
    wObj.setValves([ 1 2 3], [0 0 0]);
    wObj.setValves([ 1 2 3], [1 1 1]);
end
toc

%% Set one or more valves
wObj.setValves(0, 0);
[err, desc] = wObj.error();
disp([num2str(err) ': ' desc]);

%% Get state of valves
% wObj.setValves([0:39], (rand(1, 40) > 0.5));
vals = wObj.getValves([0:15]);
disp(char(vals + 48));
[err, desc] = wObj.error();
disp([num2str(err) ': ' desc]);

%% Set random states
inVals = (rand(1, 16) > 0.5);
wObj.setValves([0:15], inVals);
vals = wObj.getValves([0:15]);
disp(char(vals + 48));
[err, desc] = wObj.error();
disp([num2str(err) ': ' desc]);

%% Blink on/off each valve
wObj.setValves(0:15, zeros(1, 16));
pause(1);
disp(' ');
disp(' ');
for ii = 0:15
    wObj.setValves(ii, 1);
    pause(0.2);
    wObj.setValves(ii, 0);
    pause(0.2);
end    

%% Set Memory values
wObj.setMemory(12283, 1:100);

%% Get Memory values
v = wObj.getMemory(0, 500)

%% Close connection
wObj.close();
clear wObj;
