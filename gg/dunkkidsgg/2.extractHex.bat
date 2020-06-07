@echo off
set T_FILENAME="TR_Dunk Kids (Japan).gg"
set SCRIPTNAME="dunkkidsgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 238F8:140,24A18:60,26F18:200,22618:20
pause
