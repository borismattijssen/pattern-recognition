%Load prnist images as datafile
a= prnist([0:9],[1:80:1000]);
a= im_box(a,0,1); % makes all images the same size and in a box
prwaitbar off;
b = im_features(a,'all'); % Creates a PRdataset from the nist with features
[training test] = gendat(b, 0.5);
b.featlab % shows feature list created.

