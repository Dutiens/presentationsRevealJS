# Analyse des moments statistiques d'ordre supérieur, application à la description de textures

## Présentation du sujet

Il s’agit dans ce sujet de montrer une application de l’analyse des moments statistiques d’ordre supérieur (Ordre > 1).
L’étude sera portée ici sur la description de textures grâce aux moments d’ordre supérieur.
Nous pouvons caractériser une texture comme étant la description des variation d’intensité lumineuse sur une surface.


## Répartition des tâches

 * Thibault Théologien -> developpement de la présentation
 * Florian Martin -> programme matlab sur les parties développées

## Avancement

Nous avons effectué des recherches concernant le sujet, afin de mieux comprendre les enjeux liés à la description des textures par ces méthodes, ainsi que les applications liées à celle-ci (Exemple : Synthèse par ré-échantillonnage).

## Problèmes rencontrés

Les difficultés que nous avons rencontrés concernent principalement la compréhension de la notion de moment d’ordre supérieur.
Il est également compliqué de trouver des sources semblant pertinentes concernant le sujet.
Le nombre de méthodes permettant la description d’une texture étant assez important, il est difficile de choisir lesquelles incorporer à notre travail.


## Sources:  

 * Utilisation des statistiques d'ordre supérieur pour l'analyse d'images texturées :
 http://documents.irevues.inist.fr/bitstream/handle/2042/12632/099_424.pdf?sequence=1

 * Introduction aux statistiques d’ordre supérieur :
 http://www.gipsa-lab.fr/~pierre.granjon/doc/teaching/etasm03.pdf

 * Analyse de textures en traitement d’images :
 http://ultra.sdk.free.fr/docs/Image-Processing/Courses/TRAITEMENT%20NUMERIQUE%20D'IMAGES%20MEDICALES/polyTexture.pdf

 * Modélisation stochastique pour l’analyse d’images texturées -> Approches Bayésiennes pour la caractérisation dans le domaine des transformées : https://tel.archives-ouvertes.fr/tel-00809279/document

 * Analyse de textures :
 http://m.i.c.h.e.l.e.free.fr/CoursTexture.pdf

 * Extraction de la composante texturée d'une image :
 http://www.ummto.dz/IMG/pdf/AMROUN_Fazia.pdf
Analyse et synthèse de texture : http://perso.telecom-paristech.fr/~gousseau/MVA/texture.pdf

 * Moments :
 https://fr.m.wikipedia.org/wiki/Moment_(math%C3%A9matiques)

 * Étude comparative d’estimateurs de statistiques d’ordre supérieur pour le traitement du signal :
http://www.agro-montpellier.fr/sfds/CD/textes/martin1.pdf

 * Analyse statistique de textures directionnelles -> Application à la caractérisation de matériaux composites :
 https://tel.archives-ouvertes.fr/tel-00169937/document

 * Nouvelles perspectives en détection des contours -> Textures et images multispectrales :
 http://www.cipprs.org/papers/VI/VI1999/pp001-008-Fortier-et-al-1999.pdf


 * Sur l’introduction d’un index de symétrie spatiale de couleur -> Applications :
 http://liris.cnrs.fr/m2disco/coresa/coresa-2001/coresa2001/articles/50.pdf

 * Classement et indexation des pierres ornementales par une description compacte des couleurs - Texture : http://liris.cnrs.fr/m2disco/coresa/coresa-2001/coresa2001/articles/24.pdf

 * Caractérisation tissulaire par l’analyse de texture :
 http://benjlaiel.hebergratuit.net/caracteristiques_image.pdf?ckattempt=1

 * Représentation et description d'images :
 https://www-master.ufr-info-p6.jussieu.fr/2006/Ajouts/Master_esj_2006_2007/IMG/pdf/representation-description.pdf

 * Analyse de texture :
 https://perso.telecom-bretagne.eu/ronanfablet/data/coursTexture_F4B202v2.pdf


## Notes personnelles:
Les statistiques sont utilisées sur les textures afin de mesurer les aspects lisses, rugueux, granulaires …
Méthode du premier ordre:
Moment d’ordre 2 = Contraste = Variance: répartition des niveaux de gris autour de la moyenne.
Moment d’ordre 3 = Skewness: mesure de l'irrégularité.
Moment d’ordre 4 = Kurtosis: mesure de la platitude.
Moments d’ordre supérieurs difficilement interprétables

https://www.google.fr/url?sa=t&rct=j&q=&esrc=s&source=web&cd=11&ved=0ahUKEwj-6sDY6-3MAhVJkRQKHX6ZBQUQFghUMAo&url=https%3A%2F%2Fcourses.cs.washington.edu%2Fcourses%2Fcse576%2Fbook%2Fch7.pdf&usg=AFQjCNEu72-D_AjFZ1qZAQSzvSEon85Ppw&sig2=hfy4Xlfw_YN3wEa_UEimSQ&bvm=bv.122448493,d.bGg

Méthodes de description statistique

(Voir http://benjlaiel.hebergratuit.net/caracteristiques_image.pdf?ckattempt=1)
ROI : Région de l’image

1 - Moyenne:
2 - Variance:
3 - Skewness:
4 - Kurtosis:
5 - Rapport signal/bruit:
6 - Les percentiles:

Distance entre les histogrammes: utilisation du Chi²
