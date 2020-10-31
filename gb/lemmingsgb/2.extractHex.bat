@echo off
set T_FILENAME="TR_Lemmings (USA).gb"
set SCRIPTNAME="lemmingsgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
