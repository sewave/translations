@echo off
set T_FILENAME="TR_Slider (U).gg"
set SCRIPTNAME="slidergg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8000:160,10600:80,10800:200,10A00:200,11D00:40,11F00:40,173B4:160,15B32:100
pause
