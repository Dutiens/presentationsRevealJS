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
% Reconnaissance de texture sur des zones

clear all;
clc;

%% --- Image 1 
tex_size = 50;

image = imread('./images/image1.jpg');
gray = rgb2gray(image);
[tex1, ma1] = get_texture(gray, uint32(size(image, 1)/1.2), uint32(size(image, 2)/2.5), tex_size, tex_size, image);
[tex2, ma2] = get_texture(gray, uint32(size(image, 1)/4), uint32(size(image, 2)/2.5), tex_size, tex_size, ma1);
[tex3, ma3] = get_texture(gray, uint32(size(image, 1)/6), uint32(size(image, 2)/6), tex_size, tex_size, ma2);

figure(1);
subplot(3,1,1);
imhist(tex1);
title('Histogramme de texture 1');
subplot(3,1,2);
imhist(tex2);
title('Histogramme de texture 2');
subplot(3,1,3);
imhist(tex3);
title('Histogramme de texture 3');
saveas(gcf,'../ressources/images/reco_texture_figure1.png');

figure(2);
subplot(2,2,1)
imshow(ma3);
title('Original');
subplot(2,2,2)
imshow(tex1);
title('Texture 1');
subplot(2,2,3)
imshow(tex2);
title('Texture 2');
subplot(2,2,4)
imshow(tex3);
title('Texture 3');
saveas(gcf,'../ressources/images/reco_texture_figure2.png');

hist_tex1 = histcounts(tex1, 255);
hist_tex2 = histcounts(tex2, 255);
hist_tex3 = histcounts(tex3, 255);

d_tex1_2 = chi2_distance(hist_tex1, hist_tex2);
d_tex1_3 = chi2_distance(hist_tex1, hist_tex3);
d_tex2_3 = chi2_distance(hist_tex2, hist_tex3);

disp('Distances sur l''image 1');
fprintf('Distance entre la texture 1 et 2 : %f\n', d_tex1_2);
fprintf('Distance entre la texture 1 et 3 : %f\n', d_tex1_3);
fprintf('Distance entre la texture 2 et 3 : %f\n\n', d_tex2_3);

moy_1 = moment(tex1, 1);
var_1 = moment(tex1, 2);
skw_1 = moment(tex1, 3);
krt_1 = moment(tex1, 4);

moy_2 = moment(tex2, 1);
var_2 = moment(tex2, 2);
skw_2 = moment(tex2, 3);
krt_2 = moment(tex2, 4);

moy_3 = moment(tex3, 1);
var_3 = moment(tex3, 2);
skw_3 = moment(tex3, 3);
krt_3 = moment(tex3, 4);

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

%% --- Image 2
tex_size = 50;

image = imread('./images/image2.jpg');
gray = rgb2gray(image);
[tex1, ma1] = get_texture(gray, uint32(size(image, 1)/1.2), uint32(size(image, 2)/2.5), tex_size, tex_size, image);
[tex2, ma2] = get_texture(gray, uint32(size(image, 1)/4), uint32(size(image, 2)/2.5), tex_size, tex_size, ma1);
[tex3, ma3] = get_texture(gray, uint32(size(image, 1)/6), uint32(size(image, 2)/6), tex_size, tex_size, ma2);

figure(3);
subplot(3,1,1);
imhist(tex1);
title('Texture 1');
subplot(3,1,2);
imhist(tex2);
title('Texture 2');
subplot(3,1,3);
imhist(tex3);
title('Texture 3');
saveas(gcf,'../ressources/images/reco_texture_figure3.png');

figure(4);
subplot(2,2,1)
imshow(ma3);
title('Original');
subplot(2,2,2)
imshow(tex1);
title('Histogramme de texture 1');
subplot(2,2,3)
imshow(tex2);
title('Histogramme de texture 2');
subplot(2,2,4)
imshow(tex3);
title('Histogramme de texture 3');
saveas(gcf,'../ressources/images/reco_texture_figure4.png');

hist_tex1 = histcounts(tex1, 255);
hist_tex2 = histcounts(tex2, 255);
hist_tex3 = histcounts(tex3, 255);

d_tex1_2 = chi2_distance(hist_tex1, hist_tex2);
d_tex1_3 = chi2_distance(hist_tex1, hist_tex3);
d_tex2_3 = chi2_distance(hist_tex2, hist_tex3);

disp('Distances sur l''image 2');
fprintf('Distance entre la texture 1 et 2 : %f\n', d_tex1_2);
fprintf('Distance entre la texture 1 et 3 : %f\n', d_tex1_3);
fprintf('Distance entre la texture 2 et 3 : %f\n\n', d_tex2_3);

moy_1 = moment(tex1, 1);
var_1 = moment(tex1, 2);
skw_1 = moment(tex1, 3);
krt_1 = moment(tex1, 4);

moy_2 = moment(tex2, 1);
var_2 = moment(tex2, 2);
skw_2 = moment(tex2, 3);
krt_2 = moment(tex2, 4);

moy_3 = moment(tex3, 1);
var_3 = moment(tex3, 2);
skw_3 = moment(tex3, 3);
krt_3 = moment(tex3, 4);

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