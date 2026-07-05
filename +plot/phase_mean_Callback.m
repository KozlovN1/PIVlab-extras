function phase_mean_Callback(~,~,~)
handles=gui.gethand;
filepath=gui.retr('filepath');
filename=gui.retr('filename');
framenum=gui.retr('framenum');
framepart=gui.retr('framepart');
resultslist=gui.retr('resultslist');

% % ФИГНЯ -->
% clc
% fprintf('%s\n',"I am dummy code")
% 
% n=get(handles.frames_per_period,'string');
% n=eval(n);
% fprintf('%s %d %s\n',"Let's have sex", n, "times.")
% fprintf("I count: ")
% 
% for i=1:n
%     fprintf('%d ', i)
% end
% if n>3
%     fprintf('\nWOW!\n')
% elseif n<=0
%     fprintf("\nYou're boring!")
% else
%     fprintf("\nOK\n")
% end
% % <--
% 
% % exist('resultslist','var')
% fprintf("resultslist:\n")
% % disp(resultslist)
% fprintf("test size for zeros ")
% disp([size(resultslist{1,1}),size(filepath,1)/2])
% 
% fprintf("size(resultslist):\n")
% disp(size(resultslist))
% 
% % Захерачить всё в resultslist{}
% % for i=1:size(filepath,1)/2-n
% % fprintf("phase ") % DEBUG
% fig = figure();
% 
% for i=1:n
%     fprintf("phase %d\n", i) % DEBUG
%     u1=zeros([size(resultslist{3,1}),size(filepath,1)/2]);
%     v1=zeros([size(resultslist{4,1}),size(filepath,1)/2]);
%     for j=i:n:size(filepath,1)/2
%         fprintf("j = %d\n", j)
%         u1(:,:,j)=resultslist{3,j};
%         v1(:,:,j)=resultslist{4,j};
%     end
%     out_mean_u=mean(u1,3);
%     out_mean_v=mean(v1,3);
%     figure(fig)
%     quiver(resultslist{1},resultslist{2},out_mean_u,out_mean_v)
%     axis image
%     axis ij
%     drawnow
%     resultslist{3,size(filepath,1)/2+i}=out_mean_u;
%     resultslist{4,size(filepath,1)/2+i}=out_mean_v;
% end
% fprintf("\n")

% ФИГНЯ 2
clc
fprintf("size(resultslist):\n")
disp(size(resultslist))

gui.retr('typevector')

% disp(resultslist{5})

% for i=1:12
%     fprintf("i = %d",i)
%     disp(size(resultslist{i,end}))
% end

% ismean(size(resultslist,2),1)=1;
% gui.put('ismean',ismean);
% gui.put ('resultslist', resultslist);
% gui.put ('filepath', filepath);
% gui.put ('filename', filename);
% gui.put ('framenum', framenum);
% gui.put ('framepart', framepart);
% % gui.put ('typevector', typevector);
% gui.sliderrange(1)
% try
% 	set (handles.fileselector,'value',get (handles.fileselector,'max'));
% catch ME
%     disp(ME) % DEBUG
% end
% gui.sliderdisp(gui.retr('pivlab_axis'))
