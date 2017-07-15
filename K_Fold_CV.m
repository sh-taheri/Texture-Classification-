%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% © Shaghayegh Taheri 2014 All rights reserved. %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% The parameter k , is used for the k-fold cross-validation 
%%% The parameter K , is used for the K nearest neighbors classification 

function [average_error_testing,average_error_training] = K_Fold_CV(X,Y,k,K)

error_testing =zeros(k);
error_training =zeros(k);

M=size(X,1);
    
 testing_x=X(1:M/k,:);
 testing_y=Y(1:M/k,:);
 training_x=X(M/k+1:M,:);
 training_y=Y(M/k+1:M,:);
 
 error_testing(1) = ave_error(training_x,testing_x,training_y,testing_y,K);
 error_training(1) = ave_error(training_x,training_x,training_y,training_y,K);

    
 for t=2:k-1
  
 testing_x=X((t-1)*M/k+1:t*(M/k),:);
 testing_y=Y((t-1)*M/k+1:t*(M/k),:);
 training_x=[X(1:(t-1)*(M/k),:);X(t*(M/k)+1:M,:)];
 training_y=[Y(1:(t-1)*(M/k),:);Y(t*(M/k)+1:M,:)];
 error_testing(t) = ave_error(training_x,testing_x,training_y,testing_y,K);
 error_training(t) = ave_error(training_x,training_x,training_y,training_y,K);

 
 end
 
 testing_x=X((k-1)*(M/k)+1:M,:);
 testing_y=Y((k-1)*(M/k)+1:M,:);
 training_x=X(1:(k-1)*(M/k),:);
 training_y=Y(1:(k-1)*(M/k),:);
 error_testing(k) = ave_error(training_x,testing_x,training_y,testing_y,K);
 error_training(k) = ave_error(training_x,training_x,training_y,training_y,K);

 
 sum1=0;
 sum2=0;
 for i=1:k
  sum1 = sum1 + error_testing(i);
  sum2 = sum2 + error_training(i);
 end
  average_error_testing=sum1/k;
  average_error_training=sum2/k;

  









