@echo off
set T_FILENAME="TR_Gaiares (Japan, USA).md"
set SCRIPTNAME="gaiaressmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FFE00:100
pause
