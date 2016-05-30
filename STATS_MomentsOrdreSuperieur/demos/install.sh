if [ ${PWD##*/} != "demos" ]; then
  echo "Repertoire invalide"
  exit 1
fi

if [ ! -d "images" ]; then
  mkdir images
fi

if [ ! -f "images/image1.jpg" ]; then
  wget http://i.imgur.com/ipOaW3L.jpg -O images/image1.jpg
fi

if [ ! -f "images/image2.jpg" ]; then
  wget http://i.imgur.com/BRlmJ0V.jpg -O images/image2.jpg
fi

if [ ! -f "images/texture1.jpg" ]; then
  wget http://i.imgur.com/gVnewsm.jpg -O images/texture1.jpg
fi
