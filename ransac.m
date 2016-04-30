function best_result = ransac(X, t, T, N)
second_best = 0;
m = size(X, 1);

for i = 1:N
    % randomly select 2 points
    randomIndex = randperm(m, 2);
    s = X(randomIndex, :);
    
    % find inliers
    S = findInliers(X, s, t);
    inliers = length(S);
    
    if(inliers > T)
        best_result = s;
        break;
    end
    
    % if there is no best line, then choose the second best line
    if(inliers > second_best)
        second_best = inliers;
        best_result = s;
    end
end

end