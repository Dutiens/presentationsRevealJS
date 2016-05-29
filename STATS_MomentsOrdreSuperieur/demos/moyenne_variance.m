% Projet Statistiques
%
% Projet :
% Etude des moments d'ordre supérieur, application à la
% description de texture
%
% Auteurs :
% Martin Florian
% Théologien Thibault
%
% But du script :
% Calculer et montrer l'influence de la moyenne et de la variance sur une
% texture

image = imread('./images/texture1.jpg');
gray = rgb2gray(image);

gray_moy_up = modify_mean(gray, 50);
gray_var_up = egalize(gray);

moy_1 = mean(mean(gray));
moy_2 = mean(mean(gray_moy_up));
moy_3 = mean(mean(gray_var_up));

figure(1);
subplot(1,2,1);
imshow(gray);
subplot(1,2,2);
imshow(gray_moy_up);

figure(2);
subplot(1,2,1);
imshow(gray);
subplot(1,2,2);
imshow(gray_var_up);

var_1 = var(var(gray));
var_2 = var(var(gray_moy_up));
var_3 = var(var(gray_var_up));

imwrite(gray,'./images/original.jpg','jpg','Quality',100);
imwrite(gray_moy_up,'./images/moyenne.jpg','jpg','Quality',100);
imwrite(gray_var_up,'./images/contraste.jpg','jpg','Quality',100);