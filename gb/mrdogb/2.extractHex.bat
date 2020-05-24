@echo off
set T_FILENAME="TR_Mr. Do! (U).gb"
set SCRIPTNAME="mrdogb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9C10:120
pause
