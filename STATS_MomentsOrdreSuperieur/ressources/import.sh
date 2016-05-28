if [ ${PWD##*/} != "ressources" ]; then
  echo "Repertoire invalide"
  exit 1
fi

if [ ! -d "images" ]; then
  mkdir images
fi

if [ ! -f "images/image1.jpg" ]; then
  wget http://i.imgur.com/5as9czt.jpg -O images/image1.jpg
fi

if [ ! -f "images/image2.jpg" ]; then
  wget http://i.imgur.com/pQKwcpu.jpg -O images/image2.jpg
fi

if [ ! -f "images/image3.jpg" ]; then
  wget http://i.imgur.com/Vm6YPDI.jpg -O images/image3.jpg
fi

if [ ! -f "images/image4.jpg" ]; then
  wget http://i.imgur.com/wXwY9xn.jpg -O images/image4.jpg
fi
