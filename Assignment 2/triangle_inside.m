function [ inside ] = triangle_inside( P1, P2 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    inside = false;
    
    B =[P2(1,1) P2(1,2) 1;
        P2(2,1) P2(2,2) 1;
        P2(3,1) P2(3,2) 1];
    
    B1 =[P1(1,1) P1(1,2) 1;
        P2(2,1) P2(2,2) 1;
        P2(3,1) P2(3,2) 1];

    B2 =[P2(1,1) P2(1,2) 1;
        P1(1,1) P1(1,2) 1;
        P2(3,1) P2(3,2) 1];

    B3 =[P2(1,1) P2(1,2) 1;
        P2(2,1) P2(2,2) 1;
        P1(1,1) P1(1,2) 1];
    
    b = abs(det(B1)/2) + abs(det(B2)/2) + abs(det(B3)/2);
    
    if abs(det(B)/2) == b
        inside = true;
    end

end

