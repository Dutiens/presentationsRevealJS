function [ distance ] = chi2_distance( X, Y )
    sum = 0;
    for i = 1:length(X)
        if X(i) + Y(i) ~= 0
            sum = sum + (((X(i) - Y(i))^2) / (X(i) + Y(i)));
        end
    end
    distance = sqrt(2 * sum);
end

