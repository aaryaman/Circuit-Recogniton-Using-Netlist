for j=3:1:512
    for i=3:1:512
        if(c21(i,j)==1)
           % if(c21(i,j+1)==1 && c21(i,j-1)==1) 
            if(c21(i+1,j)==1 && c21(i-1,j)==1)     
           % if(c21(i,j+1)==1 || c21(i,j-1)==1 || c21(i+1,j+1)==1 || c21(i-1,j+1)==1 || c21(i+1,j)==1 || c21(i-1,j-1)==1 || c21(i+1,j-1)==1)
                v1(i,j)=1;
            else
                v1(i,j)=0;
            end
        end
    end
end