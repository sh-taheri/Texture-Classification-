%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Concordia University %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Machine Learning , Assignment 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Shaghayegh Taheri Hosseinabadi , 6934501 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% This function gets four input arguments which are the training set and
%%% testing set and the labels corresponding to each of them. 

function error = ave_error(training_set,testing_set,labels_training,labels_testing,K)

% error = 0;
% for i=1:size(testing_set,1)
% label(i,1) = KNN ( training_set , labels_training , testing_set(i,:),K );
% 
% error = error + (label(i,1)-labels_testing(i,1))^2; % The error is the number
% end                                                 % of differences between the 
                                                    % labels
 Class = knnclassify(testing_set,training_set,labels_training,K);                                                   
  
 error = 0;
 for i=1:size(testing_set,1)
     if (Class(i) ~= labels_testing(i))
      error = error + 1; % The error is the number
     end
 end   
                                                   
error = error/size(testing_set,1);




