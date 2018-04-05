@echo off 
set T_FILENAME="TR_Beavis and Butt-head (U) [!].bin"
set SCRIPTNAME="beabutsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 0:F00
pause 
