@echo off
set T_FILENAME="TR_Makaimura (J) [A].nes"
set SCRIPTNAME="makaimuranes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1140:10,11B0:10,1240:10,12B0:10,B0:60
pause
