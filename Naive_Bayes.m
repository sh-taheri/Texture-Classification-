


%%%%%%%%%%% Naive Bayes %%%%%%%%%%%

clc;
close all;
clear all;



training = load('training_examples.txt');
testing = load('testing_examples.txt');

training_features = training(:,1:12);
training_labels = training(:,13);

testing_features = testing(:,1:12);
testing_labels = testing(:,13);


model = NaiveBayes.fit(training_features,training_labels);
tic();
Class = predict(model, testing_features);
toc();

error = 0;
for i=1:size(testing_labels)
   if (Class(i) ~= testing_labels(i))
       error = error +1;
   end
end

accuracy = 1 - error/size(testing_features,1)
