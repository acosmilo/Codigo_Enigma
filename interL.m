function [ letra] = interL(v)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
n = baseT(v);

letra='';
switch n
    case baseT([3 4 0 0 0])
        letra='A';
    case baseT([4 3 3 3 0])
        letra='B';
    case baseT([4 3 4 3 0])
        letra='C';
    case baseT([4 3 3 0 0])
        letra='D';
    case baseT([3 0 0 0 0])
        letra='E';
    case baseT([3 3 4 3 0])
        letra='F';
    case baseT([4 4 3 0 0])
        letra='G';
    case baseT([3 3 3 3 0])
        letra='H';
    case baseT([3 3 0 0 0])
        letra='I';
    case baseT([3 4 4 4 0])
        letra='J';
    case baseT([4 3 4 0 0])
        letra='K';
    case baseT([3 4 3 3 0])
        letra='L';   
    case baseT([4 4 0 0 0])
        letra='M';
    case baseT([4 3 0 0 0])
        letra='N';
    case baseT([4 4 4 0 0])
        letra='O';
    case baseT([3 4 4 3 0])
        letra='P';
    case baseT([4 4 3 4 0])
        letra='Q';
    case baseT([3 4 3 0 0])
        letra='R';
    case baseT([3 3 3 0 0])
        letra='S';
    case baseT([4 0 0 0 0])
        letra='T';
    case baseT([3 3 4 0 0])
        letra='U';
    case baseT([3 3 3 4 0])
        letra='V';
    case baseT([3 4 4 0 0])
        letra='W';
    case baseT([4 3 3 4 0])
        letra='X';    
    case baseT([4 3 4 4 0])
        letra='Y';
    case baseT([4 4 3 3 0])
        letra='Z';
    case baseT([3 4 4 4 4])
        letra='1';
    case baseT([3 3 4 4 4])
        letra='2';
    case baseT([3 3 3 4 4])
        letra='3';
    case baseT([3 3 3 3 4])
        letra='4';    
    case baseT([3 3 3 3 3])
        letra='5';
    case baseT([4 3 3 3 3])
        letra='6';
    case baseT([4 4 3 3 3])
        letra='7';
    case baseT([4 4 4 3 3])
        letra='8';
    case baseT([4 4 4 4 3])
        letra='9';
    case baseT([4 4 4 4 4])
        letra='0';           
    otherwise
        
end

end

