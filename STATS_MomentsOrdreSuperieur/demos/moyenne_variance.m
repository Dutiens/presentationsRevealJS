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

clear all;
clc;

image = imread('./images/texture1.jpg');
gray = rgb2gray(image);

gray_moy_up = modify_mean(gray, 50);
gray_var_up = egalize(gray);

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

moy_1 = moment(gray, 1);
moy_2 = moment(gray_moy_up, 1);
moy_3 = moment(gray_var_up, 1);

var_1 = moment(gray, 2);
var_2 = moment(gray_moy_up, 2);
var_3 = moment(gray_var_up, 2);

skw_1 = moment(gray, 3);
skw_2 = moment(gray_moy_up, 3);
skw_3 = moment(gray_var_up, 3);

krt_1 = moment(gray, 4);
krt_2 = moment(gray_moy_up, 4);
krt_3 = moment(gray_var_up, 4);

disp('Moments texture 1');
fprintf('1. Moyenne : %f\n', moy_1);
fprintf('2. Variance : %f\n', var_1);
fprintf('3. Skewness : %f\n', skw_1);
fprintf('4. Kurtosis : %f\n\n', krt_1);

disp('Moments texture 2');
fprintf('1. Moyenne : %f\n', moy_2);
fprintf('2. Variance : %f\n', var_2);
fprintf('3. Skewness : %f\n', skw_2);
fprintf('4. Kurtosis : %f\n\n', krt_2);

disp('Moments texture 3');
fprintf('1. Moyenne : %f\n', moy_3);
fprintf('2. Variance : %f\n', var_3);
fprintf('3. Skewness : %f\n', skw_3);
fprintf('4. Kurtosis : %f\n\n', krt_3);

imwrite(gray,'./images/original.jpg','jpg','Quality',100);
imwrite(gray_moy_up,'./images/moyenne.jpg','jpg','Quality',100);
imwrite(gray_var_up,'./images/contraste.jpg','jpg','Quality',100);