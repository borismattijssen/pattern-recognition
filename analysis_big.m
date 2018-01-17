%% load data
load('pixels_36x36.mat');
[trn, tst] = gendat(p, 0.5);

%% Two Principle Components
v = pcam(trn, 2);
scatterd(trn*v, 'o');

%% PCA analysis
results = [];
for perc = 0:.1:1
    v = pcam(trn, perc);
    trn_v = trn*v;
    tst_v = tst*v;
    w = libsvc(trn_v, proxm('p',2));
    results = [results testc(tst_v*w)];
end
plot(0:.1:1, results);

%% SVM, second order polynomal
w = libsvc(trn,proxm('p',2));
testc(tst*w)

%% PCA + SVM, second order polynomal
v = pcam(trn, 50); % maybe do pcam(p, 50)?
w = libsvc(trn*v,proxm('p',2));
testc(tst*v*w)

%% KNN
w = knnc(trn);
testc(tst*w)

%% PCA + KNN
v = pcam(trn, 50); % maybe do pcam(p, 50)?
w = knnc(trn*v);
testc(tst*v*w)

%% Random forest
w = randomforestc(trn);
testc(tst*w);