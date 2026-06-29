# convert_to_ogv_script

I made these ffmpeg batch files for my Godot project that uses video files
And since Godot only supports .ogv format for videos, you need to convert your videos to this format
### And that's where my scripts come in

Even tho .ogv videos have poor quality, these batch files help fix that by converting your video files to near-original quality .ogv files!
# GUIDE

First you need to get ffmpeg, download it and put it in a folder.
Put the desired batch file in the same folder as ffmpeg (there needs to be ffmpeg.exe in this folder), and drag and drop your original video file to this batch file, it will open it and start converting your video.

## HOW TO CHOOSE WHICH SCRIPT TO USE?

convert_to_ogv.bat : this script converts to a 720p .ogv video with 121fps.<br>
convert_to_ogv_61_fps.bat : this script converts to a 720p .ogv video with 61fps.<br>
convert_to_ogv_original.bat : this script converts a .ogv video with the original resolution and 121fps.<br>
convert_to_ogv_original_61_fps.bat : this script converts a .ogv video with the original resolution and 61fps.<br>

## WHY USE ABOVE 60 FPS?
Sometimes the result video looks laggy and heavier than the original, use a 121 fps script in that case.

## WHY USE 61 FPS AND 121 FPS AND NOT 60 FPS AND 120 FPS?
That additional frame ensures that your video won't have visual glitches, if your result video has a visual glitch in a frame or some frames, the additional frame seems to fix it for most cases.
