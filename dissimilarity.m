features = im_features(b,'all");
%first mapping for creating a dissimilarity matrix by computing euclidean distance
w1 = proxm(features);
dm = features*w1;
[training,test= genddat(dd,[100 100])
v = ldc(training);
test*v*testc


%second mapping for dimensionality reduction by projecting to a pseudo-euclidean space
w2 = psem(dm);
rdm = dm*w2;
[training,test] = gendat(rmd,0.5);
v = ldc(training);
test*v*testc

