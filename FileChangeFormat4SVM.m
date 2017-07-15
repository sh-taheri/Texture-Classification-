
%%%%% Convert the original text files to the files
%%%%% readable for the windows SVM.

clc;
clear all;
close all;


training = load('training_examples.txt');
testing = load('testing_examples.txt');

training_features = training(:,1:12);
training_labels = training(:,13);

testing_features = testing(:,1:12);
testing_labels = testing(:,13);


f=fopen('examples_Training_LibSVM.txt','w');

for i=1:size(training,1)
    s=[num2str(training_labels(i,1)), ' '];
    for k=0:size(training_features,2)-1
        s =[s , num2str(k), ':' , num2str(training_features(i,k+1)), ' '];
    end
    fprintf(f,'%s\n',s);
end

f = fopen('examples_Testing_LibSVM.txt','w');

for i=1:size(testing,1)
    s=[num2str(testing_labels(i,1)), ' '];
    for k=0:size(testing_features,2)-1
        s =[s , num2str(k), ':' , num2str(testing_features(i,k+1)), ' '];
    end
    fprintf(f,'%s\n',s);
end


