

%%%%%%%%%%% SVM Classification %%%%%%%%%%%

clc;
close all;
clear all;


 
 file1='examples_Training_LibSVM';
 file2 ='examples_Testing_LibSVM';
 tic();
 %system(['svm-train.exe -t 0 ',file1,'.txt .\',file1,'.model']);
 system(['svm-train.exe -t 3 ',file1,'.txt .\',file1,'.model']);
 toc();
%  tic();
 system(['svm-predict.exe ',file2,'.txt .\',file1,'.model .\',file2,'_classification_output.txt > .\',file2,'_recognition_rate.txt']);
%  toc();
