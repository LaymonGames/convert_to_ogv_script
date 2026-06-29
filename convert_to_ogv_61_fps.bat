@echo off
title Godot OGV Converter
echo =================================
echo    GODOT OGV CONVERTER
echo    Drag MP4 file onto this window
echo =================================
echo.

if "%~1"=="" (
    echo ERROR: No file provided!
    echo.
    echo HOW TO USE:
    echo 1. Copy this file to your videos folder
    echo 2. Drag any MP4 file onto it
    echo 3. Wait for conversion
    echo.
    echo Output: [filename]_godot.ogv
    echo.
    pause
    exit /b
)

echo Processing: %~nx1
echo Started: %time%
echo.

set "output_file=%~n1_godot.ogv"

echo Converting with excellent quality settings...
echo Video quality: 4/10 (excellent)
echo Audio quality: 8/10 (high)
echo.

REM === THE CONVERSION COMMAND ===
ffmpeg -i "%~1" -vf scale=-1:720 -r 61 -c:v libtheora -q:v 1000 -c:a libvorbis -q:a 10 -pix_fmt yuv444p -threads 0 "%output_file%" 

echo.
if exist "%output_file%" (
    echo SUCCESS: Conversion complete!
    echo Output: %output_file%
    echo.
    
    REM Get file size
    for %%A in ("%output_file%") do (
        set /a size_kb=%%~zA/1024
        set /a size_mb=!size_kb!/1024
        echo File size: !size_mb! MB
    )
    
    echo.
    echo READY FOR GODOT:
    echo In Godot, use VideoStreamTheora node
    echo Path: res://%output_file%
) else (
    echo ERROR: Conversion failed!
    echo.
    echo TROUBLESHOOTING:
    echo 1. Make sure FFmpeg is installed
    echo 2. Run: ffmpeg -version
    echo 3. File may be corrupted or locked
)

echo.
echo Finished: %time%
pause