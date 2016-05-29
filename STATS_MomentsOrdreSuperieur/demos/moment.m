function [res] = moment(image, ordre)
  N = size(image, 1) * size(image,2);
  
  if ordre == 1
    res = (1/N)*sum(sum(image))
  else
    moy = moment(image, 1);
    res = 0;
    for j = 1:size(image, 1)
      for i = 1:size(image, 2)
        res = res + (image(j,i)-moy)^ordre;
      end
    end
    res = res/N;
  end
end