# script to clear downloads folder on monthly basis.


for file in ~/Downloads/*
do  
    case $file in
        *.txt | *.docx | *.doc | *.csv | *.tsv)
            mkdir -p ~/Documents/$(date +'%B%Y') && cp "$file" ~/Documents/$(date +'%B%Y');;
        
        *.torrent)
            mkdir -p ~/Documents/Torrents/$(date +'%B%Y') && cp "$file" ~/Documents/Torrents/$(date +'%B%Y');;
        
        *.jpeg | *.jpg | *.png | *.webp)
            mkdir -p ~/Pictures/$(date +'%B%Y') && cp "$file" ~/Pictures/$(date +'%B%Y');;

        *.mp4 | *.mkv | *.avi )
            mkdir -p ~/Videos/$(date +'%B%Y') && cp "$file" ~/Videos/$(date +'%B%Y');;
	
	*.mp3 | .m4a | *.wav | *.wma)
	    mkdir -p ~/Music/$(date +'%B%Y') && cp "$file" ~/Music/$(date +'%B%Y');;

	*.zip | *.rar)
	    mkdir -p ~/Downloads/zips/$(date +"%B%Y") && cp "$file" ~/Downloads/zips/$(date +"%B%Y")



    esac
done
