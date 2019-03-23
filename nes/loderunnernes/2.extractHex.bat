@echo off
set T_FILENAME="TR_Lode Runner (U) [!].nes"
set SCRIPTNAME="loderunnernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5220:60,5C10:100,52F0:10
pause
