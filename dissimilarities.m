load pixels_36x36.mat

%takes hours, maybe sample dataset into smaller

%dissimilarity measure = euclidean distance
w = proxm(p);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%dissimilarity measure = polynomial linear
w = proxm(p,'p');
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%dissimilarity measure = polynomial second order
w = proxm(p,'p',2);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%dissimilarity measure  = polynomial third order
w = proxm(p,'p',3);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%dissimilarity measure = homogeneous
w = proxm(p,'h');
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%dissimilarity measure = exponential
w = proxm(p,'e');
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%dissimilarity measure = radial basis
w = proxm(p,'r');
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%dissimilarity measure = sigmoid
w = proxm(p,'s');
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%dissimilarity measure = minkowski
w = proxm(p,'m');
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%dissimilarity measure = city-block
w = proxm(p,'c');
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%dissimilarity measure = cosine
w = proxm(p,'o');
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));E
tst*v*testc

%dissimilarity measure = ndiff
w = proxm(p,'n');
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%dissimilarity measure = hellinger
w = proxm(p,'g');
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%euclidean + pseudo-euclidean embedding
w = proxm(p);
dd = p*w;
w1 = psem(dd);
d = dd*w1;
[trn,tst] = gendat(d,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%euclidean + pseudo-euclidean embedding + euclidean in the pseudo-euclidean
%space
w = proxm(p);
dd = p*w;
[w1,sig]= psem(dd);
d = dd*w1;
dd2 = psdistm(d,sig);
[trn,tst] = genddat(dd2,0.5);
v = libsvc(trn,proxm([],'p',3));
tst*v*testc

%euclidean + ldc
w = proxm(p);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = ldc(trn);
tst*v*testc

%euclidean + qdc
w = proxm(p);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = qdc(trn);
tst*v*testc

%euclidean + nmc
w = proxm(p);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = nmc(trn);
tst*v*testc

%euclidean + parzenc
w = proxm(p);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
[v,h] = parzenc(trn);
tst*v*testc

%euclidean + fisherc
w = proxm(p);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = fisherc(trn);
tst*v*testc

%euclidean + loglc
w = proxm(p);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = loglc(trn);
tst*v*testc

%euclidean + treec
w = proxm(p);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = treec(trn);
tst*v*testc

%euclidean + naivebc
w = proxm(p);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = naivebc(trn);
tst*v*testc

%euclidean + bpxnc
w = proxm(p);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
v = bpxnc(trn);
tst*v*testc

%euclidean + knnc
w = proxm(p);
dd = p*w;
[trn,tst] = genddat(dd,0.5);
[v,k] = knnc(trn);
tst*v*testc
