@echo off
set T_FILENAME="TR_Summer Santa.tzx"
set SCRIPTNAME="summersantatzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1EDB:40,20BD:48,215D:60,364F:30,3993:40
pause
