@echo off
set T_FILENAME="TR_Lemmings (Japan, USA) (v1.1).md"
set SCRIPTNAME="lemmingssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
