@echo off
set T_FILENAME="TR_R-Type (U) [!].gb"
set SCRIPTNAME="rtypegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C53:200
pause
