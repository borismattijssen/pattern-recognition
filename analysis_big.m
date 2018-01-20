%% load feature data
load('features_20x20.mat');
[trn, tst] = gendat(b, 0.5);

%% load pixel data
load('pixels_36x36.mat');
[trn, tst] = gendat(p, 0.5);
pca = pcam(trn,256);
trn_p = trn*pca;
tst_p = tst*pca;

%% Two Principle Components
v = pcam(trn, 2);
scatterd(trn*v, 'o');

%% PCA analysis
results = [];
perc = 2.^(1:10);
for i = 1:length(perc)
    v = trn*pcam(perc(i));
    trn_v = trn*v;
    tst_v = tst*v;
    w = libsvc(trn_v, proxm('p',2));
    e = testc(tst_v*w);
    results(i) = e;
end
figure
plot(perc, results);
title('SVM(poly-2) using PCA');
xlabel('percentage of variance of original data');
ylabel('classification error');

%% PCA variance
perc = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.85, 0.9, 0.95, 0.97, 0.99];
ns = [];
for i = 1:length(perc)
    [w,n] = pcam(trn,perc(i));
    ns(i) = n;
end
figure
plot(ns, perc);
title('PCA Variance Retention');
ylabel('% variance retained');
xlabel('dimensions');

%% SVM, second order polynomal
w = libsvc(trn,proxm('p',3));
c = tst*w;
testc(c, 'crisp')
confmat(c);

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

%% LDC
w = ldc(trn);
testc(tst*w);

%% QDC
w = qdc(trn);
testc(tst*w);

%% NMC
w = nmc(trn);
testc(tst*w);

%% Parzen
h = 1;
w = parzenc(trn, h);
testc(tst*w);
% Mean classification error on 5000 test objects: 0.9

%% Neural Network
w = neurc(trn);
testc(tst*w);

%% Learning Curves "Low Variance / High Bias"
% clsfrs = {nmc, ldc, fisherc, knnc([],10), parzenc([],5)};
U1 = setname(nmc, 'NMC');
U2 = setname(ldc, 'LDC');
U3 = setname(fisherc, 'Fisher');
U4 = setname(knnc([],10), '10-NN');
U5 = setname(parzenc([],5), 'Parzen(h=5)');
U = {U1,U2,U3,U4,U5};
sizes = [1000, 2000, 3000, 4000, 4999];
e = cleval(trn, U, sizes, 5, tst);
plote(e, 'noapperror');

%% Learning Curves "High Variance / Low Bias"
% clsfrs = {nmc, ldc, fisherc, knnc([],10), parzenc([],5)};
U1 = setname(knnc([],1), '1-NN');
U2 = setname(knnc([],2), '2-NN');
U3 = setname(libsvc([],proxm('p',1)), 'SVM(lin)');
U4 = setname(libsvc([],proxm('p',2)), 'SVM(poly-2)');
U5 = setname(libsvc([],proxm('p',3)), 'SVM(poly-3)');
U6 = setname(libsvc([],proxm('p',5)), 'SVM(poly-5)');
U7 = setname(libsvc([],proxm('p',9)), 'SVM(poly-9)');
U = {U1,U2,U3,U4,U5,U6,U7};
sizes = [1000, 2000, 3000, 4000, 4999];
e = cleval(trn_p, U, sizes, 5, tst_p);
plote(e, 'noapperror');

%% Final solution
clsf = libsvc([],proxm('p',2));
p = pcam(trn,256);
trn_p = trn*p;
tst_p = tst*p;

sizes = [1000, 2000, 3000, 4000, 4999];
e = cleval(trn_p,clsf,sizes,5,tst_p);
plote(e);
title('Learning Curve for SVM(poly-2) with PCA(comp-256)')
w = trn_p*clsf;
confmat(tst_p*w);
[err,stds] = prcrossval(tst_p,clsf,10,5)


%% Feature selection analysis
load('i_f.mat');
F_flip = flip(F);
figure
plot(F_flip, 'o');
title('Feature evaluation (1-NN leave-one-out critereon)');
xlabel('features');
ylabel('accuracy');