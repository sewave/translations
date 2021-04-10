@echo off
set T_FILENAME="TR_language.gtf"
set SCRIPTNAME="sevenyearswarpc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
