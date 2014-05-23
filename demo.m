clear all
clc

[x, Xtest, y, Ytest] = loadGermanDatasetCP();

%one layer
[model,net] = deepMKL_train(x,y,1,10,1E-3);
[pred,acc] = deepMKL_test([x;Xtest],Ytest,model,net);

%two layer
[model,net] = deepMKL_train(x,y,2,10,1E-5);
[pred,acc] = deepMKL_test([x;Xtest],Ytest,model,net);

%three layer
[model,net] = deepMKL_train(x,y,3);
[pred,acc] = deepMKL_test([x;Xtest],Ytest,model,net);
