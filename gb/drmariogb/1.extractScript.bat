@echo off
set T_FILENAME="Dr. Mario (W) (V1.1).gb"
set SCRIPTNAME="drmariogb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
