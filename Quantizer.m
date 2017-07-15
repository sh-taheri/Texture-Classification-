

function quantized_image = Quantizer(image,K) %%% Quantize the input image 
                                              %%% into 16 gray levels
                                              %%% K is the number of
                                              %%% quantization levels
quantized_image = floor(image/K);

