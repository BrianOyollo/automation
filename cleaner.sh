# script to clear downloads folder on monthly basis.


for file in ~/Downloads/*
do  
    case $file in
        *.pdf | *.docx)
            mkdir -p ~/Desktop/trial/Docs/$(date +'%B%Y') && cp "$file" ~/Desktop/trial/Docs/$(date +'%B%Y');;
        
        *.torrent)
            mkdir -p ~/Desktop/trial/Torrents/$(date +'%B%Y') && cp "$file" ~/Desktop/trial/Torrents/$(date +'%B%Y');;
        
        *.jpeg | *.jpg | *.png | *.webp)
            mkdir -p ~/Desktop/trial/Pictures/$(date +'%B%Y') && cp "$file" ~/Desktop/trial/Pictures/$(date +'%B%Y');;

        *.mp4 | *.mkv | *.avi )
            mkdir -p ~/Desktop/trial/Videos/$(date +'%B%Y') && cp "$file" ~/Desktop/trial/Videos/$(date +'%B%Y');;



    esac
done
