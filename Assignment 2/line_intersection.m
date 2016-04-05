function [ intersection ] = line_intersection( x1, x2, x3, x4, y1, y2, y3, y4)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    M1 = [x1 y1; x2 y2];
    M2 = [x3 y3; x4 y4];
    
    M3 = [x1 1; x2 1];
    M4 = [x3 1; x4 1];
    M5 = [y1 1; y2 1];
    M6 = [y3 1; y4 1];
    
    Nx = [det(M1) det(M3); det(M2) det(M4)];
    Dx = [det(M3) det(M5); det(M4) det(M6)];
    Px = det(Nx) / det(Dx);

    Ny = [det(M1) det(M5); det(M2) det(M6)];
    Dy = [det(M3) det(M5); det(M4) det(M6)];
    Py = det(Ny) / det(Dy);
    
    intersection = true;
    
    if det(Dx) == 0 && det(Dy) == 0
        intersection = false;
    end
    if Px == Inf || Py == Inf
        intersection = false;
    end    
end

