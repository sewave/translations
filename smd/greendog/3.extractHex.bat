@echo off
set T_FILENAME="TR_Greendog - The Beached Surfer Dude (UE) [!].bin"
set SCRIPTNAME="greendog"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
