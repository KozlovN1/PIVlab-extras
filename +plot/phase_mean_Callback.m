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
for i=1:size(filepath,1)/2-n
    % TODO: put some meaningful values instead ones & zeros
    for j=1:n
        % out_mean_u= make_by_element_sum_then_average (resultslist{1,j});
        % out_mean_v= make_by_element_sum_then_average (resultslist{2,j});
    end
    out_mean_u=ones(i);
    out_mean_v=zeros(i);
    resultslist{3,size(filepath,1)/2+i}=out_mean_u;
    resultslist{4,size(filepath,1)/2+i}=out_mean_v;
end

