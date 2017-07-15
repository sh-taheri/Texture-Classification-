
clc;
close all;
clear all;

testing_examples = [];


angle = ['0','0','0';'0','3','0';'0','6','0';'0','9','0';'1','2','0';...
         '1','5','0';'1','8','0';'2','1','0';'2','4','0';'2','7','0';...
         '3','0','0';'3','3','0'];
%%%% cushion , label = 0 %%%%     
for i=1:9    
for j=1:12
image = imread(['TestingData\cushion\cushion1-a-p00',num2str(i),'-r',angle(j,:),'.png']);    
image = double(image);
quantized_image = Quantizer(image,16);
L=16;
label = 0;
[PH,PV,PLD,PRD] = gray_tone(quantized_image,L);
feature_vector = [Extract_features(PH,PV,PLD,PRD) label];
testing_examples = [testing_examples;feature_vector];
% training_labels = [training_labels;label];
end
end
%%%% grass , label = 1;
for i=1:9   
for j=1:12
image = imread(['TestingData\grass\grass1-a-p00',num2str(i),'-r',angle(j,:),'.png']);    
image = double(image);
quantized_image = Quantizer(image,16);
L=16;
label = 1;
[PH,PV,PLD,PRD] = gray_tone(quantized_image,L);
feature_vector = [Extract_features(PH,PV,PLD,PRD) label];
testing_examples = [testing_examples;feature_vector];
% training_labels = [training_labels;label];
end
end
%%%% linseeds , label = 2 %%%%
for i=1:9    
for j=1:12
image = imread(['TestingData\linseeds\linseeds1-a-p00',num2str(i),'-r',angle(j,:),'.png']);    
image = double(image);
quantized_image = Quantizer(image,16);
L=16;
label = 2;
[PH,PV,PLD,PRD] = gray_tone(quantized_image,L);
feature_vector = [Extract_features(PH,PV,PLD,PRD) label];
testing_examples = [testing_examples;feature_vector];
% training_labels = [training_labels;label];
end
end
%%%% rice , label = 3 %%%%
for i=1:9    
for j=1:12
image = imread(['TestingData\rice\rice1-a-p00',num2str(i),'-r',angle(j,:),'.png']);    
image = double(image);
quantized_image = Quantizer(image,16);
L=16;
label = 3;
[PH,PV,PLD,PRD] = gray_tone(quantized_image,L);
feature_vector = [Extract_features(PH,PV,PLD,PRD) label];
testing_examples = [testing_examples;feature_vector];
% training_labels = [training_labels;label];
end
end
%%%% seat , label = 4 %%%%
for i=1:9    
for j=1:12
image = imread(['TestingData\seat\seat2-a-p00',num2str(i),'-r',angle(j,:),'.png']);    
image = double(image);
quantized_image = Quantizer(image,16);
L=16;
label = 4;
[PH,PV,PLD,PRD] = gray_tone(quantized_image,L);
feature_vector = [Extract_features(PH,PV,PLD,PRD) label];
testing_examples = [testing_examples;feature_vector];
% training_labels = [training_labels;label];
end
end
%%%% stone , label = 5 %%%%
for i=1:9    
for j=1:12
image = imread(['TestingData\stone\stone1-a-p00',num2str(i),'-r',angle(j,:),'.png']);    
image = double(image);
quantized_image = Quantizer(image,16);
L=16;
label = 5;
[PH,PV,PLD,PRD] = gray_tone(quantized_image,L);
feature_vector = [Extract_features(PH,PV,PLD,PRD) label];
testing_examples = [testing_examples;feature_vector];
% training_labels = [training_labels;label];
end
end

testing_examples = testing_examples(randperm(size(testing_examples, 1)), :);
save testing_examples.txt -ascii testing_examples;
%save training_labels.txt -ascii training_labels;

