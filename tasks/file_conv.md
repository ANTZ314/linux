# File Conversions


## ~AUDIO~

#### To batch convert Audio files from m4a to mp3:


Find all non-mp3 files:
```
	find . -type f ! -name "*.mp3"
```

Find and convert:

```
find . -name '*.m4a' -print0 | while read -d '' -r file; do
  ffmpeg -i "$file" -n -acodec libmp3lame -ab 128k "${file%.m4a}.mp3" < /dev/null
done
```

---
#### To convert Audio files from wma to mp3:

Find all non-mp3 files:
```
	find . -type f ! -name "*.mp3"
```

Find and convert:

```
find . -name '*.wma' -print0 | while read -d '' -r file; do
  ffmpeg -i "$file" -n -acodec libmp3lame -ab 128k "${file%.wma}.mp3" < /dev/null
done
```

---
## ~IMAGE~


#### COMPILE MULTIPLE IMAGES INTO VIDEO FILE:

Images must have height/width both devisible by 2:
* -i = input files path
* -y = output file path
* framerate = defaults to 25
* -r = set frame rate

---
#### BATCH RESIZE FILES:

* Set bash input/output file locations
* Run bash script
./resize.sh

---
#### Compile into Video file:

ffmpeg -framerate 10 -i /home/antz/Pictures/pic/location/%d.jpg -r 15 -y security.mp4

---
## ~VIDEO~


**(CONCATINATE MULTIPLE MP4 FILES)**


#### METHOD 1:

// First trans-code to intermediate streams:
ffmpeg -i a1.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts temp1.ts
ffmpeg -i a2.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts temp2.ts
ffmpeg -i a3.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts temp3.ts
// Then join:
ffmpeg -i "concat:temp1.ts|temp2.ts|temp3.ts" -c copy -bsf:a aac_adtstoasc output.mp4


---
#### METHOD 2:

CREATE A TEXT FILE WITH A LIST FILES + PATHS:
file '/home/antz/Videos/test/a1.mp4'
file '/home/antz/Videos/test/a2.mp4'
file '/home/antz/Videos/test/a3.mp4'

THEN RUN THE FOLLOWING:
ffmpeg -f concat -safe 0 -i input.txt -c copy output.mp4