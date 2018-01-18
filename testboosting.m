%load('features_extracted_preprocessed(17_obj_per_class).mat');
%[training,test] = gendat(b,0.5);
%w_pca = pcam(training);
%training = training*w_pca;
%test= test*w_pca;
%[W,R] = featselm(training,'NN','forward',0);

cl = stumpc();

v= adaboostc(training*W,cl,100,[],0);
test*W*v*testc

v= adaboostc(training*W,cl,100,meanc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,maxc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,minc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,medianc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,votec,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,prodc,0);
test*W*v*testc

cl = nmc();

v= adaboostc(training*W,cl,100,[],0);
test*W*v*testc

v= adaboostc(training*W,cl,100,meanc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,maxc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,minc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,medianc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,votec,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,prodc,0);
test*W*v*testc


cl = knnc();

v= adaboostc(training*W,cl,100,[],0);
test*W*v*testc

v= adaboostc(training*W,cl,100,meanc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,maxc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,minc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,medianc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,votec,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,prodc,0);
test*W*v*testc


cl = ldc();

v= adaboostc(training*W,cl,100,[],0);
test*W*v*testc

v= adaboostc(training*W,cl,100,meanc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,maxc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,minc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,medianc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,votec,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,prodc,0);
test*W*v*testc


cl = qdc();

v= adaboostc(training*W,cl,100,[],0);
test*W*v*testc

v= adaboostc(training*W,cl,100,meanc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,maxc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,minc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,medianc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,votec,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,prodc,0);
test*W*v*testc


cl = loglc();

%v= adaboostc(training*W,cl,100,[],0);
%test*W*v*testc

v= adaboostc(training*W,cl,100,meanc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,maxc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,minc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,medianc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,votec,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,prodc,0);
test*W*v*testc


cl = parzenc();

v= adaboostc(training*W,cl,100,[],0);
test*W*v*testc

v= adaboostc(training*W,cl,100,meanc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,maxc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,minc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,medianc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,votec,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,prodc,0);
test*W*v*testc


cl = fisherc();

%v= adaboostc(training*W,cl,100,[],0);
%test*W*v*testc

v= adaboostc(training*W,cl,100,meanc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,maxc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,minc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,medianc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,votec,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,prodc,0);
test*W*v*testc


cl = naivebc();

v= adaboostc(training*W,cl,100,[],0);
test*W*v*testc

v= adaboostc(training*W,cl,100,meanc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,maxc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,minc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,medianc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,votec,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,prodc,0);
test*W*v*testc


cl = treec([],'infcrit',0);

v= adaboostc(training*W,cl,100,[],0);
test*W*v*testc

v= adaboostc(training*W,cl,100,meanc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,maxc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,minc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,medianc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,votec,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,prodc,0);
test*W*v*testc


cl = bpxnc([],3);

v= adaboostc(training*W,cl,100,[],0);
test*W*v*testc

v= adaboostc(training*W,cl,100,meanc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,maxc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,minc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,medianc,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,votec,0);
test*W*v*testc

v= adaboostc(training*W,cl,100,prodc,0);
test*W*v*testc