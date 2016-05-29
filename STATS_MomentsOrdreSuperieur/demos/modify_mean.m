function [texture] = modify_mean(gray, value)
  texture = gray;
  for j = 1:size(texture, 1)
    for i = 1:size(texture, 2)
      if texture(j, i) > 255 - value
        printf('Attention - Luminosité : Perte d''informations sur la texture\n');
        texture(j, i) = 255;
      else
        texture(j, i) = texture(j, i) + value;
      end
    end
  end
end