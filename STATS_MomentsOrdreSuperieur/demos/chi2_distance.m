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
% But de la fonction :
% Permet de calculer la distance du chi_2 entre deux histogrammes

function [ distance ] = chi2_distance( X, Y )
    sum = 0;
    for i = 1:length(X)
        if X(i) + Y(i) ~= 0
            sum = sum + (((X(i) - Y(i))^2) / (X(i) + Y(i)));
        end
    end
    distance = sqrt(2 * sum);
end

