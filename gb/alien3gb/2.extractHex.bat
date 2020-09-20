@echo off
set T_FILENAME="TR_Alien 3 (UE) [!].gb"
set SCRIPTNAME="alien3gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
