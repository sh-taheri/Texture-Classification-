

function feature_vector = Extract_features(PH,PV,PLD,PRD)

%%%%% f1 : %%%%% 
f1H = Angular_Second_Moment(PH);
f1V = Angular_Second_Moment(PV);
f1LD = Angular_Second_Moment(PLD);
f1RD = Angular_Second_Moment(PRD);
f1 = mean([f1H f1V f1LD f1RD]);

%%%%% f2 : %%%%%%
 f2H = Contrast(PH);
 f2V = Contrast(PH);
 f2LD = Contrast(PH);
 f2RD = Contrast(PH);
 f2 = mean([f2H f2V f2LD f2RD]);
 
 %%%%% f3 : %%%%%%
%  f3H = Correlation(PH);
%  f3V = Correlation(PH);
%  f3LD = Correlation(PH);
%  f3RD = Correlation(PH);
%  f3 = mean([f3H f3V f3LD f3RD]);
 
 %%%%% f4 : %%%%%%
 f4H = Variance(PH);
 f4V = Variance(PH);
 f4LD = Variance(PH);
 f4RD = Variance(PH);
 f4 = mean([f4H f4V f4LD f4RD]);
 
 %%%%% f5 : %%%%%%
 f5H = Inverse_difference_moment(PH);
 f5V = Inverse_difference_moment(PH);
 f5LD = Inverse_difference_moment(PH);
 f5RD = Inverse_difference_moment(PH);
 f5 = mean([f5H f5V f5LD f5RD]);
 
 %%%%% f6 : %%%%%%
 f6H = Sum_average(PH);
 f6V = Sum_average(PH);
 f6LD = Sum_average(PH);
 f6RD = Sum_average(PH);
 f6 = mean([f6H f6V f6LD f6RD]);
 
 %%%%% f7 : %%%%%%
 f7H = Sum_variance(PH);
 f7V = Sum_variance(PH);
 f7LD = Sum_variance(PH);
 f7RD = Sum_variance(PH);
 f7 = mean([f7H f7V f7LD f7RD]); 
 
 %%%%% f8 : %%%%%%
 f8H =  Sum_entropy(PH);
 f8V =  Sum_entropy(PH);
 f8LD =  Sum_entropy(PH);
 f8RD =  Sum_entropy(PH);
 f8 = mean([f8H f8V f8LD f8RD]); 
 
 %%%%% f9 : %%%%%%
 f9H =  Entropy(PH);
 f9V =  Entropy(PH);
 f9LD =  Entropy(PH);
 f9RD =  Entropy(PH);
 f9 = mean([f9H f9V f9LD f9RD]);
 
 
 %%%%% f10 : %%%%%%
 f10H =  Difference_variance(PH);
 f10V =  Difference_variance(PH);
 f10LD = Difference_variance(PH);
 f10RD = Difference_variance(PH);
 f10 = mean([f10H f10V f10LD f10RD]); 

  
 %%%%% f11 : %%%%%%
 f11H = Difference_entropy(PH);
 f11V = Difference_entropy(PH);
 f11LD = Difference_entropy(PH);
 f11RD = Difference_entropy(PH);
 f11 = mean([f11H f11V f11LD f11RD]); 

 
  %%%%% f12 & f13 : %%%%%%
 [f12H,f13H] = Information_of_correlation(PH);
 [f12V,f13V] = Information_of_correlation(PV);
 [f12LD,f13LD] = Information_of_correlation(PLD);
 [f12RD,f13RD] = Information_of_correlation(PRD);
  f12 = mean([f12H f12V f12LD f12RD]); 
  f13 = mean([f13H f13V f13LD f13RD]); 



%%%%% We will remove feature 3 because it doesnt give stable results
feature_vector = [f1,f2,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13];







