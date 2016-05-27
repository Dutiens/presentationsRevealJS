if [ ${PWD##*/} != "ressources" ]; then
  echo "Repertoire invalide"
  exit 1
fi

if [ ! -d "images" ]; then
  mkdir images
fi

if [ ! -f "images/image1.jpg" ]; then
  wget http://i.imgur.com/XbnA6T4.jpg -O images/image1.jpg
fi

if [ ! -f "images/image2.jpg" ]; then
  wget http://i.imgur.com/GSaWYLt.jpg -O images/image2.jpg
fi

if [ ! -f "images/image3.jpg" ]; then
  wget http://i.imgur.com/2dhJucM.jpg -O images/image3.jpg
fi

if [ ! -f "images/image4.jpg" ]; then
  wget http://i.imgur.com/rCJxdep.jpg -O images/image4.jpg
fi

if [ ! -f "images/image5.jpg" ]; then
  wget http://i.imgur.com/Z8wr5gW.jpg -O images/image5.jpg
fi

if [ ! -f "images/image6.jpg" ]; then
  wget http://i.imgur.com/hkSfwD3.jpg -O images/image6.jpg
fi

if [ ! -f "images/image7.jpg" ]; then
  wget http://i.imgur.com/1TIC4BO.jpg -O images/image7.jpg
fi

if [ ! -f "images/image8.jpg" ]; then
  wget http://i.imgur.com/ijmijRi.jpg -O images/image8.jpg
fi
