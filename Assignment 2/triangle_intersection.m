function flag = triangle_intersection(P1, P2)
% triangle_test : returns true if the triangles overlap and false otherwise

%%% All of your code should be between the two lines of stars.
% *******************************************************************
    flag = false; 
    for i = 1:3
        for j = 1:3
            if i >= 3
                ii = 1;
            else
                ii = i+1;
            end
            if j >= 3
                jj = 1;
            else
                jj = j+1;
            end

            x1 = P1(i ,1);
            x2 = P1(ii,1);
            y1 = P1(i ,2);
            y2 = P1(ii,2);

            x3 = P2(j ,1);
            x4 = P2(jj,1);
            y3 = P2(j ,2);
            y4 = P2(jj,2);      

            if line_intersection(x1, x2, x3, x4, y1, y2, y3, y4) == 1
                flag = true;
            end
        end
    end
    if triangle_inside(P1,P2)
        flag = true;
    end        
% *******************************************************************
end