@echo off
set T_FILENAME="TR_yazzie48.tap"
set SCRIPTNAME="yazzie48tap"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4709:18
pause
