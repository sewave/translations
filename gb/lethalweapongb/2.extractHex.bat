@echo off
set T_FILENAME="TR_Lethal Weapon (U) [!].gb"
set SCRIPTNAME="lethalweapongb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7C7F:80,110E0:80
pause
