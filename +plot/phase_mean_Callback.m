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
fprintf("resultslist = ")
disp(resultslist)

fprintf("test size for zeros ")
disp([size(resultslist{1,1}),size(filepath,1)/2])

% Захерачить всё в resultslist{}
% for i=1:size(filepath,1)/2-n
for i=1:n
    u1=zeros([size(resultslist{1,1}),size(filepath,1)/2]);
    v1=zeros([size(resultslist{2,1}),size(filepath,1)/2]);
    for j=1:n:size(filepath,1)/2
        u1(:,:,j)=resultslist{1,j};
        v1(:,:,j)=resultslist{2,j};
    end
    out_mean_u=mean(u1,3);
    out_mean_v=mean(v1,3);
    resultslist{3,size(filepath,1)/2+i}=out_mean_u;
    resultslist{4,size(filepath,1)/2+i}=out_mean_v;
end

