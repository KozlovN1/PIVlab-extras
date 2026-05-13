function phase_mean_Callback(~,~,~)
handles=gui.gethand;
filepath=gui.retr('filepath');
filename=gui.retr('filename');
framenum=gui.retr('framenum');
framepart=gui.retr('framepart');
resultslist=gui.retr('resultslist');

fprintf('%s\n','I am Dummy')

get(handles.frames_per_period,'string')
