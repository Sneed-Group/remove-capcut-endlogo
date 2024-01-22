duration=$(ffprobe -i "$1" -show_entries format=duration -v quiet -of csv="p=0")
ffmpeg -i "$1" -ss 0 -t $(echo "$duration - 2.3" | bc) -c copy "$1-out.mp4"

