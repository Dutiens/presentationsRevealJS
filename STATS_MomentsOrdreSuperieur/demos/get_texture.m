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
% Permet de récupérer une portion d'une image et renvoie également
% l'image originale avec la zone récupérée mise en évidence

function [ texture, marked ] = get_texture( I, x, y, w, h, color)
    texture = I(y:y+h-1, x:x+w-1);
    
    marked = color;
    
    % HAUT
    marked(y-2:y, x:x+w, 1) = ones(3, w+1)*255;
    marked(y-2:y, x:x+w, 2) = zeros(3, w+1);
    marked(y-2:y, x:x+w, 3) = ones(3, w+1)*255;
    
    % BAS
    marked(y+h:y+h+2, x:x+w, 1) = ones(3, w+1)*255;
    marked(y+h:y+h+2, x:x+w, 2) = zeros(3, w+1);
    marked(y+h:y+h+2, x:x+w, 3) = ones(3, w+1)*255;
    
    % GAUCHE
    marked(y:y+h, x-2:x, 1) = ones(h+1, 3)*255;
    marked(y:y+h, x-2:x, 2) = zeros(h+1, 3);
    marked(y:y+h, x-2:x, 3) = ones(h+1, 3)*255;
    
    % DROITE
    marked(y:y+h, x+w:x+w+2, 1) = ones(h+1, 3)*255;
    marked(y:y+h, x+w:x+w+2, 2) = zeros(h+1, 3);
    marked(y:y+h, x+w:x+w+2, 3) = ones(h+1, 3)*255;
end

