# Author: Mrinal Dhar
# Downloads a youtube video as an mp3 song, given its URL. 

function _mp3(){ wget -O "/Users/sankaul/Music/iTunes/iTunes Media/Automatically Add to iTunes.localized/$2.mp3" http://youtubeinmp3.com/fetch/?video="$1"; };
_mp3 $1 "$2"

