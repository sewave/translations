@echo off
set T_FILENAME="TR_Lemmings 2 - The Tribes (U) [!].gb"
set SCRIPTNAME="lemmings2thetribesgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
