

%%%%%%%%%%% KNN Classification %%%%%%%%%%%
clc;
clear all;
close all;
warning off;


training = load('training_examples.txt');
testing = load('testing_examples.txt');

training_features = training(:,1:12);
training_labels = training(:,13);

testing_features = testing(:,1:12);
testing_labels = testing(:,13);

counter =1;
 for K=3:2:15
[average_error_testing,average_error_training] = K_Fold_CV(training_features,training_labels,10,K); %%% 10-fold cross validation
error (counter) = average_error_testing;
counter = counter +1;
 end
K = 3:2:15 
stem(K,error)






%%%%%%%%%%%%%%%%%%%%%%%%% KNN %%%%%%%%%%%%%%%%%%%%%%%
% tic();
% Class = knnclassify(testing_features,training_features,training_labels,7);
% toc();
% 
% error = 0;
% for i=1:size(testing_labels)
%    if (Class(i) ~= testing_labels(i))
%        error = error +1;
%    end
% end
% 
% accuracy = 1 - error/size(testing_features,1)























