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
subplot(3,1,2);
imhist(tex2);
subplot(3,1,3);
imhist(tex3);

figure(2);
subplot(2,2,1)
imshow(ma3);
subplot(2,2,2)
imshow(tex1);
subplot(2,2,3)
imshow(tex2);
subplot(2,2,4)
imshow(tex3);

hist_tex1 = histcounts(tex1, 125);
hist_tex2 = histcounts(tex2, 125);
hist_tex3 = histcounts(tex3, 125);

d_tex1_2 = chi2_distance(hist_tex1, hist_tex2);
d_tex1_3 = chi2_distance(hist_tex1, hist_tex3);
d_tex2_3 = chi2_distance(hist_tex2, hist_tex3);

disp('Distances sur l''image 2');
fprintf('Distance entre la texture 1 et 2 : %f\n', d_tex1_2);
fprintf('Distance entre la texture 1 et 3 : %f\n', d_tex1_3);
fprintf('Distance entre la texture 2 et 3 : %f\n\n', d_tex2_3);

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
subplot(3,1,2);
imhist(tex2);
subplot(3,1,3);
imhist(tex3);

figure(4);
subplot(2,2,1)
imshow(ma3);
subplot(2,2,2)
imshow(tex1);
subplot(2,2,3)
imshow(tex2);
subplot(2,2,4)
imshow(tex3);

hist_tex1 = histcounts(tex1, 125);
hist_tex2 = histcounts(tex2, 125);
hist_tex3 = histcounts(tex3, 125);

d_tex1_2 = chi2_distance(hist_tex1, hist_tex2);
d_tex1_3 = chi2_distance(hist_tex1, hist_tex3);
d_tex2_3 = chi2_distance(hist_tex2, hist_tex3);

disp('Distances sur l''image 2');
fprintf('Distance entre la texture 1 et 2 : %f\n', d_tex1_2);
fprintf('Distance entre la texture 1 et 3 : %f\n', d_tex1_3);
fprintf('Distance entre la texture 2 et 3 : %f\n\n', d_tex2_3);