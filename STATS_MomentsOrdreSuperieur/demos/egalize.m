function [texture] = egalize(gray)
  texture = gray;
  L = 8;
  p = normalized_histogram(texture, L);
  
  for j = 1:size(texture, 1)
    for i = 1:size(texture, 2)
      k = texture(j,i);
      texture(j,i) = texture(j,i) * (L - 1)*sum(p(1:k));
    end
  end
end