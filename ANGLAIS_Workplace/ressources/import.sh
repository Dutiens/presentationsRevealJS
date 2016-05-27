if [ ${PWD##*/} != "ressources" ]; then
  echo "Repertoire invalide"
  exit 1
fi

if [ ! -d "images" ]; then
  mkdir images
fi

if [ ! -f "images/image1.jpg" ]; then
  wget http://i.imgur.com/LUccJ3a.jpg -O images/image1.jpg
fi

if [ ! -f "images/image2.jpg" ]; then
  wget http://i.imgur.com/GuPAIgx.jpg -O images/image2.jpg
fi

if [ ! -f "images/image3.jpg" ]; then
  wget http://i.imgur.com/5qT0qHo.jpg -O images/image3.jpg
fi

if [ ! -f "images/image4.jpg" ]; then
  wget http://i.imgur.com/9Nz0DJQ.jpg -O images/image4.jpg
fi

if [ ! -f "images/image5.jpg" ]; then
  wget http://i.imgur.com/82TxBoo.jpg -O images/image5.jpg
fi

if [ ! -f "images/image6.jpg" ]; then
  wget http://i.imgur.com/Xy0hlcs.jpg -O images/image6.jpg
fi

if [ ! -f "images/image7.jpg" ]; then
  wget http://i.imgur.com/83RPfnr.jpg -O images/image7.jpg
fi

if [ ! -f "images/image8.jpg" ]; then
  wget http://i.imgur.com/g1hdLEg.jpg -O images/image8.jpg
fi

if [ ! -f "images/image9.jpg" ]; then
  wget http://i.imgur.com/bU925SO.jpg -O images/image9.jpg
fi

if [ ! -f "images/image10.jpg" ]; then
  wget http://i.imgur.com/rCJxdep.jpg -O images/image10.jpg
fi

if [ ! -f "images/image11.jpg" ]; then
  wget http://i.imgur.com/1qGdZvx.jpg -O images/image11.jpg
fi

if [ ! -f "images/image12.jpg" ]; then
  wget http://i.imgur.com/9vZVzTI.jpg -O images/image12.jpg
fi

if [ ! -f "images/image13.jpg" ]; then
  wget http://i.imgur.com/kkCjCpt.jpg -O images/image13.jpg
fi

if [ ! -f "images/image14.jpg" ]; then
  wget http://i.imgur.com/Etmw2pT.jpg -O images/image14.jpg
fi

if [ ! -f "images/image15.jpg" ]; then
  wget http://i.imgur.com/ijmijRi.jpg -O images/image15.jpg
fi
