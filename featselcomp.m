for i=1:3
if i ==1
crit = 'NN';
end
if i == 2
crit = 'eucl-s';
end
if i == 3
crit = 'eucl-m';
end
%[W,R] = featsellr(training,crit,12,1,0,test);
[W,R] = featselb(training,crit,12,test);
%W = featselv(training);
c = training*W;
d = test*W;
w = ldc(c);
d*w*testc;
w = qdc(c);
d*w*testc;
w = parzenc(c);
d*w*testc;
w = fisherc(c);
d*w*testc;
w = loglc(c);
d*w*testc;
w = nmc(c);
d*w*testc;
end