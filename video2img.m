%%将视频转换成帧图片
clc;
clear;
%% 读取视频
video_path='TownCentreXVID.avi';    

video_obj=VideoReader(video_path);   

frame_number=video_obj.CurrentTime;

%% 存储每一帧图片到文件夹image
if ~exist('JPEGImages','dir')
    mkdir('JPEGImages');
    disp('successfully create directory image!');
end

for i=1:frame_number
    image_name=sprintf('%.6d.jpg',i);   
    frame=readframe(video_obj,i);           
    imwrite(frame,image_name,'jpg');
end

disp('all images are written into directory image')