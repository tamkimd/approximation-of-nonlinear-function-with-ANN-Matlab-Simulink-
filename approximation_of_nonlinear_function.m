L=length(in1);
X=[in1(2:L)'];
D =[out(2:L)'];
N=10;
mynet=newff(X,D,N,{'tansig' 'purelin'});
mynet.trainparam.epochs=20000;
mynet.trainparam.lr=0.0001;
mynet=train(mynet,X,D);
gensim(mynet)
