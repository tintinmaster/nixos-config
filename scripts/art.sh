url=$(playerctl metadata mpris:artUrl 2>/dev/null | xargs)
artist=$(playerctl metadata xesam:artist 2>/dev/null)
album=$(playerctl metadata xesam:album 2>/dev/null | xargs)
if [[ -z "$album" ]];
then
  album=$(playerctl metadata xesam:title 2>/dev/null | xargs)
fi

metadata=$(printf "$artist - $album")

if [[ "$url" == "No players found" || -z "$url" ]];
then
  exit
elif [ -f ~/.cache/albumart/"$metadata".png ]
then
  echo ~/.cache/albumart/"$metadata".png
else
  curl -s $url -o ~/.cache/albumart/"$metadata"
  magick ~/.cache/albumart/"$metadata" ~/.cache/albumart/"$metadata".png
  rm ~/.cache/albumart/"$metadata"
  echo ~/.cache/albumart/"$metadata".png
fi
