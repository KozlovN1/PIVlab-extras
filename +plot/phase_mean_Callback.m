function phase_mean_Callback(~,~,~)
handles=gui.gethand;
filepath=gui.retr('filepath');
% filename=gui.retr('filename');
% framenum=gui.retr('framenum');
% framepart=gui.retr('framepart');
% resultslist=gui.retr('resultslist');
% 
% str = strrep(get(handles.selectedFramesMean,'string'),'-',':');

% ФИГНЯ -->
clc
fprintf('%s\n',"I am dummy code")

n_fields=size(filepath,1)/2;

n=get(handles.frames_per_period,'string');
n_phases=eval(n);
fprintf('%s %d %s\n',"Let's do it", n_phases, "times.")

% get(handles.selectedFramesMean, 'string')
% set(handles.selectedFramesMean,'String', num2str(1:n_phases:n_fields));
% get(handles.selectedFramesMean, 'string')
for i=1:n_phases
    set(handles.selectedFramesMean,'String', num2str(i:n_phases:n_fields));
    plot.temporal_operation_Callback([],[],1)

end
% % fprintf("I count: ")
% % 
% % for i=1:n
% %     fprintf('%d ', i)
% % end
% % if n>3
% %     fprintf('\nWOW!\n')
% % elseif n<=0
% %     fprintf("\nYou're boring!")
% % else
% %     fprintf("\nOK\n")
% % end
% % % <--
% % 
% % % exist('resultslist','var')
% % fprintf("resultslist:\n")
% % % disp(resultslist)
% % fprintf("test size for zeros ")
% % disp([size(resultslist{1,1}),size(filepath,1)/2])
% % 
% % fprintf("size(resultslist):\n")
% % disp(size(resultslist))
% % 
% % Захерачить всё в resultslist{}
% % for i=1:size(filepath,1)/2-n
% % fprintf("phase ") % DEBUG
% fig = figure();
% 
% for i=1:n_phases
%     fprintf("phase %d\n", i) % DEBUG
%     u1=zeros([size(resultslist{3,1}),size(filepath,1)/2]);
%     v1=zeros([size(resultslist{4,1}),size(filepath,1)/2]);
%     for j=i:n_phases:size(filepath,1)/2
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
% 
% % % ФИГНЯ 2
% % clc
% % fprintf("size(resultslist):\n")
% % disp(size(resultslist))
% % 
% % gui.retr('filename')
% % length(gui.retr('filename'))
% % 
% % % disp(resultslist{5})
% % 
% % for i=1:12
% %     fprintf("i = %d",i)
% %     disp(size(resultslist{i,1000}))
% % end
% 
% % ismean(size(resultslist,2),1)=1;
% filepathselected=filepath(1:2:end);
% eval(['filepathselected=filepathselected([' str '],:);']);
% filename=gui.retr('filename');
% 
% for i=1:n_phases
%     % TODO: optimize, use filepath_len instead size(filepath,1)
%     filepath{size(filepath,1)+1,1}=filepathselected{1,1};
%     filepath{size(filepath,1)+1,1}=filepathselected{1,1};
%     if gui.retr('video_selection_done') == 0
%         framenum (size(framenum,1)+1,1)=framenum(1,1);
%         framenum (size(framenum,1)+1,1)=framenum(1,1);
%         framepart(size(framepart,1)+1,:)=framepart(1,:);
%         framepart(size(framepart,1)+1,:)=framepart(1,:);
%     else
%         video_frame_selection=gui.retr('video_frame_selection');
%         video_frame_selection(end+1,1)=video_frame_selection(strnum(end)*2);
%         video_frame_selection(end+1,1)=video_frame_selection(strnum(end)*2);
%         gui.put('video_frame_selection',video_frame_selection);
%     end
%     filename{size(filename,1)+1,1}=['MEAN of phase: ' i ' of ' n_phases];
%     filename{size(filename,1)+1,1}=['MEAN of phase: ' i ' of ' n_phases];
%     ismean(size(resultslist,2),1)=1;
% end
% 
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
