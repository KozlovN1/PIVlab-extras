function phase_mean_Callback(~,~,~)
handles=gui.gethand;
filepath=gui.retr('filepath');
filename=gui.retr('filename');
framenum=gui.retr('framenum');
framepart=gui.retr('framepart');
resultslist=gui.retr('resultslist');

% ФИГНЯ -->
clc
fprintf('%s\n',"I am dummy code")

n=get(handles.frames_per_period,'string');
n=eval(n);
fprintf('%s %d %s\n',"Let's have sex", n, "times.")
fprintf("I count: ")

for i=1:n
    fprintf('%d ', i)
end
if n>3
    fprintf('\nWOW!\n')
elseif n<=0
    fprintf("\nYou're boring!")
else
    fprintf("\nOK\n")
end
% <--

exist('resultslist','var')
disp(resultslist)

% Захерачить всё в resultslist{}
for i=1:n
    % TODO: put some meaningful values instead ones & zeros
    out_mean_u=ones(i);
    out_mean_v=zeros(i);
    resultslist{3,size(filepath,1)/2+i}=out_mean_u;
    resultslist{4,size(filepath,1)/2+i}=out_mean_v;
end

