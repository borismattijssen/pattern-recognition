%Load prnist images as datafile
a= prnist([0:9],[1:60:1000]);
preproc= im_box([],0,1)*im_rotate*im_resize([],[30 30])*im_box([],1,0); % makes all images the same size and in a box
a=a*preproc
prwaitbar off;
b = im_features(a,'all'); % Creates a PRdataset from the nist with features
[training test] = gendat(b, 0.5);
w_pca = pcam(training);
training = training*w_pca;
test = test*w_pca;
W = featselm(training,ldc,'forward',0);
w = ldc(training*W);
testc(test*W,w)

