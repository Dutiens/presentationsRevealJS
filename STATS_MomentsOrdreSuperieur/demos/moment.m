function [res] = moment(image, ordre)
  N = size(image, 1) * size(image,2);
  image = double(image);
  
  if ordre == 1
    res = (1/N)*sum(sum(image));
  else  
    moy = moment(image, 1);
    ect = 1;
    if ordre > 2
        ect = sqrt(moment(image, 2));
    end
    
    somme = 0;
    for j = 1:size(image, 1)
      for i = 1:size(image, 2)
        somme = somme + (image(j,i)-moy)^ordre;
      end
    end
    
    res = (somme/N)/(ect^ordre);
  end
end