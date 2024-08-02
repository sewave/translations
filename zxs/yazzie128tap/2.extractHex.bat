@echo off
set T_FILENAME="TR_yazzie128.tap"
set SCRIPTNAME="yazzie128tap"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4709:18
pause
