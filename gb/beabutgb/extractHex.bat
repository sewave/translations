@echo off 
set T_FILENAME="TR_Beavis and Butt-head (U) [!].gb"
set SCRIPTNAME="beabutgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 14FA9:60
pause 
