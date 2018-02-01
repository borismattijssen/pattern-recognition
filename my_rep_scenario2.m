function [b] = my_rep(m)
preproc= im_box([],0,1)*im_rotate*im_resize([],[36 36])*im_box([],1,0); % makes all images the same size and in a box
m=m*preproc

b=im_features(m,'all');

