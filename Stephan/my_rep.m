function [b] = my_rep(m)
show(m)
preproc= im_box([],0,1)*im_rotate*im_resize([],[30 30])*im_box([],1,0); % makes all images the same size and in a box
m=m*preproc
figure;show(m)
save('images_tested_on','m')
c = im_features(m,'all');
save('what is this','c')
%w_pca = pcam(c);
%[W,R]=featselm(c*w_pca,ldc,'forward',0);
b= c;

