

function [PH,PV,PLD,PRD] = gray_tone(image,L) %%% image is assumed to be a gray scale image
                                            %%% L is the number of gray
                                            %%% levels

[Nx,Ny]=size(image);
 PH = zeros(L,L);
 PV = zeros(L,L);
 PLD = zeros(L,L);
 PRD = zeros(L,L);

for x = 1:Nx
    for y = 1:Ny
        
      i = image(x,y);
      
      %%%%%% PH %%%%%%
      if (y>1)
         j = image(x,y-1);
         PH(i+1,j+1) = PH(i+1,j+1) + 1;
      end
      
      if (y<Ny)
          j = image(x,y+1);
          PH(i+1,j+1) = PH(i+1,j+1) + 1;
      end
      
      %%%%%% PV %%%%%%
      if (x>1)
          j=image(x-1,y);
          PV(i+1,j+1) = PV(i+1,j+1) +1;  
      end
      
      if (x<Nx)
          j=image(x+1,y);
          PV(i+1,j+1) = PV(i+1,j+1) +1;  
      end
      
      %%%%%% PLD %%%%%%
      if ( x>1 && y>1)
          j=image(x-1,y-1);
          PLD(i+1,j+1) = PLD(i+1,j+1) +1;  
      end 
      
      if ( x<Nx && y<Ny)
          j=image(x+1,y+1);
          PLD(i+1,j+1) = PLD(i+1,j+1) +1;  
      end 
      
      %%%%%% PRD %%%%%%
      if ( x>1 && y<Ny)
          j=image(x-1,y+1);
          PRD(i+1,j+1) = PRD(i+1,j+1) +1;  
      end 
      
      if ( x<Nx && y>1)
          j=image(x+1,y-1);
          PRD(i+1,j+1) = PRD(i+1,j+1) +1;  
      end 
      
        
        
    end
end

      
      %%%%% Normalizing the Matrices %%%%%%
      %PH = PH / (max(max(PH)));
      PH = PH /(sum(sum(PH))) ;
      PV = PV /(sum(sum(PV))) ;
      PLD = PLD /(sum(sum(PLD))) ;
      PRD = PRD /(sum(sum(PRD))) ;
      






