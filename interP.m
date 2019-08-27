function [ palabra ] = interP( v )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
l=length(v);
i=0;
b=zeros(1,5);

palabra='';

while (i<l)
    for j=1:5
        
        i=i+1;
        if (v(:,i)==1 || v(:,i)==2)
            if v(:,i)==2 
                palabra=strcat(palabra,{' '});
            end    
            break
        else
             b(:,j)=v(:,i);
        end    
        if i>=l 
            break
        end
    end   
 
    palabra=strcat(palabra,interL(b));
    b=zeros(1,5);
end


