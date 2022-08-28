#!/bin/bash
# script to clear my downloads folder.
# scheduled to run daily at midnight.


for file in ~/Downloads/*
do  
    case $file in
        *.txt | *.docx | *.doc | *.csv | *.tsv | *.pdf | *.DOC | *.pptx | *.xlsx)
            mkdir -p ~/Documents/$(date +'%B%Y') && mv "$file" ~/Documents/$(date +'%B%Y');;
        
        *.torrent)
            mkdir -p ~/Documents/Torrents/$(date +'%B%Y') && mv "$file" ~/Documents/Torrents/$(date +'%B%Y');;
        
        *.jpeg | *.jpg | *.png | *.webp)
            mkdir -p ~/Pictures/$(date +'%B%Y') && mv "$file" ~/Pictures/$(date +'%B%Y');;

        *.mp4 | *.mkv | *.avi )
            mkdir -p ~/Videos/$(date +'%B%Y') && mv "$file" ~/Videos/$(date +'%B%Y');;
	
	*.mp3 | .m4a | *.wav | *.wma)
	    mkdir -p ~/Music/$(date +'%B%Y') && mv "$file" ~/Music/$(date +'%B%Y');;

	*.zip | *.rar | *.gz)
	    mkdir -p ~/Downloads/zips/$(date +"%B%Y") && mv "$file" ~/Downloads/zips/$(date +"%B%Y")



    esac
done
