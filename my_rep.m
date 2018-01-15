function [b] = my_rep(m)
m = im_box(m, 0,1);
c = im_features(m,'all');
w_pca = pcam(c)
[W,R]=featselm(c*w_pca,ldc,'forward',0)
b= c*w_pca*W

