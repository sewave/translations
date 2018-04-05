@echo off 
set T_FILENAME="TR_Beavis and Butt-head (U) [!].gg"
set SCRIPTNAME="beabutgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7F7B5-7FBF5
pause 
