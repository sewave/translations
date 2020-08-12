@echo off
set T_FILENAME="TR_Dennis the Menace (USA).gb"
set SCRIPTNAME="dennisthemenacegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
