@echo off
set T_FILENAME="TR_Side Pocket (U) [!].nes"
set SCRIPTNAME="sidepocketnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F30:60
pause
