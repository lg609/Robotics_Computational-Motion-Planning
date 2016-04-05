function [ intersection ] = line_intersection( x1, x2, x3, x4, y1, y2, y3, y4)
    denom  = (y4-y3) * (x2-x1) - (x4-x3) * (y2-y1);
    numera = (x4-x3) * (y1-y3) - (y4-y3) * (x1-x3);
    numerb = (x2-x1) * (y1-y3) - (y2-y1) * (x1-x3);

    % Are the line coincident? 
    if abs(numera) < eps && abs(numerb) < eps && abs(denom) < eps
        intersection = true;
    else
        % Are the line parallel 
        if abs(denom) < eps
            intersection = false;
        else
            % Is the intersection along the the segments 
            mua = numera / denom;
            mub = numerb / denom;
            if mua < 0 || mua > 1 || mub < 0 || mub > 1
                intersection = false;
            else
                intersection = true;
            end
        end
    end   
end

