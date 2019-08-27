function [ escalar ] = baseT( v)

escalar=0;

for i=1:5
    if (v(:,i)==3) || (v(:,i)==4)
    escalar=escalar+(v(:,i)-2)*3^(i-1);
    end
    

end

