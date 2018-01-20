%load('features_extracted_preprocessed(17_obj_per_class).mat');
%[training,test] = gendat(b,0.5);
%w_pca = pcam(training);
%training = training*w_pca;
%test= test*w_pca;
%[W,R] = featselm(training,'NN','forward',0);

cl = stumpc();

v= baggingc(training*W,cl,100,wvotec);
test*W*v*testc

v= baggingc(training*W,cl,100,meanc);
test*W*v*testc

v= baggingc(training*W,cl,100,maxc);
test*W*v*testc

v= baggingc(training*W,cl,100,minc);
test*W*v*testc

v= baggingc(training*W,cl,100,medianc);
test*W*v*testc

v= baggingc(training*W,cl,100,votec);
test*W*v*testc

v= baggingc(training*W,cl,100,prodc);
test*W*v*testc

cl = nmc();

v= baggingc(training*W,cl,100,wvotec);
test*W*v*testc

v= baggingc(training*W,cl,100,meanc);
test*W*v*testc

v= baggingc(training*W,cl,100,maxc);
test*W*v*testc

v= baggingc(training*W,cl,100,minc);
test*W*v*testc

v= baggingc(training*W,cl,100,medianc);
test*W*v*testc

v= baggingc(training*W,cl,100,votec);
test*W*v*testc

v= baggingc(training*W,cl,100,prodc);
test*W*v*testc


cl = knnc();

v= baggingc(training*W,cl,100,wvotec);
test*W*v*testc

v= baggingc(training*W,cl,100,meanc);
test*W*v*testc

v= baggingc(training*W,cl,100,maxc);
test*W*v*testc

v= baggingc(training*W,cl,100,minc);
test*W*v*testc

v= baggingc(training*W,cl,100,medianc);
test*W*v*testc

v= baggingc(training*W,cl,100,votec);
test*W*v*testc

v= baggingc(training*W,cl,100,prodc);
test*W*v*testc


cl = ldc();

v= baggingc(training*W,cl,100,wvotec);
test*W*v*testc

v= baggingc(training*W,cl,100,meanc);
test*W*v*testc

v= baggingc(training*W,cl,100,maxc);
test*W*v*testc

v= baggingc(training*W,cl,100,minc);
test*W*v*testc

v= baggingc(training*W,cl,100,medianc);
test*W*v*testc

v= baggingc(training*W,cl,100,votec);
test*W*v*testc

v= baggingc(training*W,cl,100,prodc);
test*W*v*testc


cl = qdc();

v= baggingc(training*W,cl,100,wvotec);
test*W*v*testc

v= baggingc(training*W,cl,100,meanc);
test*W*v*testc

v= baggingc(training*W,cl,100,maxc);
test*W*v*testc

v= baggingc(training*W,cl,100,minc);
test*W*v*testc

v= baggingc(training*W,cl,100,medianc);
test*W*v*testc

v= baggingc(training*W,cl,100,votec);
test*W*v*testc

v= baggingc(training*W,cl,100,prodc);
test*W*v*testc


cl = loglc();

%v= baggingc(training*W,cl,100,wvotec);
%test*W*v*testc

v= baggingc(training*W,cl,100,meanc);
test*W*v*testc

v= baggingc(training*W,cl,100,maxc);
test*W*v*testc

v= baggingc(training*W,cl,100,minc);
test*W*v*testc

v= baggingc(training*W,cl,100,medianc);
test*W*v*testc

v= baggingc(training*W,cl,100,votec);
test*W*v*testc

v= baggingc(training*W,cl,100,prodc);
test*W*v*testc


cl = parzenc();

v= baggingc(training*W,cl,100,wvotec);
test*W*v*testc

v= baggingc(training*W,cl,100,meanc);
test*W*v*testc

v= baggingc(training*W,cl,100,maxc);
test*W*v*testc

v= baggingc(training*W,cl,100,minc);
test*W*v*testc

v= baggingc(training*W,cl,100,medianc);
test*W*v*testc

v= baggingc(training*W,cl,100,votec);
test*W*v*testc

v= baggingc(training*W,cl,100,prodc);
test*W*v*testc


cl = fisherc();

%v= baggingc(training*W,cl,100,wvotec);
%test*W*v*testc

v= baggingc(training*W,cl,100,meanc);
test*W*v*testc

v= baggingc(training*W,cl,100,maxc);
test*W*v*testc

v= baggingc(training*W,cl,100,minc);
test*W*v*testc

v= baggingc(training*W,cl,100,medianc);
test*W*v*testc

v= baggingc(training*W,cl,100,votec);
test*W*v*testc

v= baggingc(training*W,cl,100,prodc);
test*W*v*testc


cl = naivebc();

v= baggingc(training*W,cl,100,wvotec);
test*W*v*testc

v= baggingc(training*W,cl,100,meanc);
test*W*v*testc

v= baggingc(training*W,cl,100,maxc);
test*W*v*testc

v= baggingc(training*W,cl,100,minc);
test*W*v*testc

v= baggingc(training*W,cl,100,medianc);
test*W*v*testc

v= baggingc(training*W,cl,100,votec);
test*W*v*testc

v= baggingc(training*W,cl,100,prodc);
test*W*v*testc


cl = treec([],'infcrit',0);

v= baggingc(training*W,cl,100,wvotec);
test*W*v*testc

v= baggingc(training*W,cl,100,meanc);
test*W*v*testc

v= baggingc(training*W,cl,100,maxc);
test*W*v*testc

v= baggingc(training*W,cl,100,minc);
test*W*v*testc

v= baggingc(training*W,cl,100,medianc);
test*W*v*testc

v= baggingc(training*W,cl,100,votec);
test*W*v*testc

v= baggingc(training*W,cl,100,prodc);
test*W*v*testc


cl = bpxnc([],3);

v= baggingc(training*W,cl,100,wvotec);
test*W*v*testc

v= baggingc(training*W,cl,100,meanc);
test*W*v*testc

v= baggingc(training*W,cl,100,maxc);
test*W*v*testc

v= baggingc(training*W,cl,100,minc);
test*W*v*testc

v= baggingc(training*W,cl,100,medianc);
test*W*v*testc

v= baggingc(training*W,cl,100,votec);
test*W*v*testc

v= baggingc(training*W,cl,100,prodc);
test*W*v*testc