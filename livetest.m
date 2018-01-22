load handwritten_digits.mat
show(a(1:40:400),5)
preproc= im_box([],0,1)*im_rotate*im_resize([],[36 36])*im_box([],1,0);
b = a*preproc;
%b = im_gray(b); for grayscale images
d = prdataset(b);
[trn,tst] = gendat(d,0.5);
pca = pcam(trn,256);
trn_p = trn*pca;
tst_p = tst*pca;
w = libsvc(trn_p,proxm([],'p',3));
tst_p*w*testc
%always 0
%[e1,s1] = prcrossval(trn_p,libsvc([],proxm('p',3)),50,10);
d = d(1:2:400,:);
%17 features for colored and 24 for grayscale
d = im_features(d,'all');
[trn,tst] = gendat(d,0.5);
w = ldc(trn);
[e2,s2] = prcrossval(trn,ldc,20,10);
tst*w*testc
lab = getlab(tst);
lab2 = tst*w*labeld;
confmat(lab,lab2)
