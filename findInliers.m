function S = findInliers(X, s, t)
S = [];

for i = 1:size(X, 1)
    % calculate the distance from the point to the line
    distance = abs(det([s(2, :) - s(1, :); X(i, :) - s(2, :)]))/norm(s(2, :)- s(1, :));
    
    % find inliers
    if(distance < t)
        S = [S; X(i, :)];
    end
end

end