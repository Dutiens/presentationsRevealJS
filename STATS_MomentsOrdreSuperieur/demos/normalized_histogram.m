function [histogram] = normalized_histogram(gray, L)
  n = size(gray, 1) * size(gray, 2);
  p = zeros(1, 2^L - 1);
  
  for j = 1:size(gray, 1)
    for i = 1:size(gray, 2)
      p(gray(j, i)) = p(gray(j, i)) + 1;
    end
  end
  
  histogram = p * 1/n;
end