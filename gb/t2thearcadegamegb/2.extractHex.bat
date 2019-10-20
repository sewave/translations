@echo off
set T_FILENAME="TR_T2 - The Arcade Game (U) [!].gb"
set SCRIPTNAME="t2thearcadegamegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
