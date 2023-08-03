# Usage:
#   bash image2urijpeg.sh image.jpg 320x240 > base64.txt  # will resize before conversion
#   bash image2urijpeg.sh image.jpg > base64.txt          # will keep original size

magick "$1" -resize ${2:--} jpeg:- | openssl enc -base64 -A | sed -e 's/^/data:image\/jpeg;base64,/'